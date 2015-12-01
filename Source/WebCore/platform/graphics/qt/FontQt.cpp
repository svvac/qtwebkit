/*
    Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies)
    Copyright (C) 2008, 2010 Holger Hans Peter Freyther
    Copyright (C) 2009 Dirk Schulze <krit@webkit.org>

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public
    License as published by the Free Software Foundation; either
    version 2 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public License
    along with this library; see the file COPYING.LIB.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

#include "config.h"
#include "Font.h"

#include "AffineTransform.h"
#include "FontDescription.h"
#include "FontSelector.h"
#include "GlyphBuffer.h"
#include "Gradient.h"
#include "GraphicsContext.h"
#include "NotImplemented.h"
#include "Pattern.h"
#include "ShadowBlur.h"
#include "TextRun.h"

#include <QBrush>
#include <QPainter>
#include <QPainterPath>
#include <QPen>
#include <QPointF>
#include <QTextLayout>
#include <qalgorithms.h>

#include <limits.h>

namespace WebCore {

static const QString fromRawDataWithoutRef(const String& string, int start = 0, int len = -1)
{
    if (len < 0)
        len = string.length() - start;
    Q_ASSERT(start + len <= string.length());

    // We don't detach. This assumes the WebCore string data will stay valid for the
    // lifetime of the QString we pass back, since we don't ref the WebCore string.
    return QString::fromRawData(reinterpret_cast<const QChar*>(string.characters8() + start), len);
}

static QTextLine setupLayout(QTextLayout* layout, const TextRun& style)
{
    int flags = style.rtl() ? Qt::TextForceRightToLeft : Qt::TextForceLeftToRight;
    if (style.expansion())
        flags |= Qt::TextJustificationForced;
    layout->setFlags(flags);
    layout->beginLayout();
    QTextLine line = layout->createLine();
    line.setLineWidth(INT_MAX/256);
    if (style.expansion())
        line.setLineWidth(line.naturalTextWidth() + style.expansion());
    layout->endLayout();
    return line;
}

static QPen fillPenForContext(GraphicsContext& ctx)
{
    if (ctx.fillGradient()) {
        QBrush brush(*ctx.fillGradient()->platformGradient());
        brush.setTransform(ctx.fillGradient()->gradientSpaceTransform());
        return QPen(brush, 0);
    }

    if (ctx.fillPattern()) {
        return QPen(QBrush(ctx.fillPattern()->createPlatformPattern()), 0);
    }

    return QPen(QColor(ctx.fillColor()), 0);
}

static QPen strokePenForContext(GraphicsContext& ctx)
{
    if (ctx.strokeGradient()) {
        QBrush brush(*ctx.strokeGradient()->platformGradient());
        brush.setTransform(ctx.strokeGradient()->gradientSpaceTransform());
        return QPen(brush, ctx.strokeThickness());
    }

    if (ctx.strokePattern()) {
        QBrush brush(ctx.strokePattern()->createPlatformPattern());
        return QPen(brush, ctx.strokeThickness());
    }

    return QPen(QColor(ctx.strokeColor()), ctx.strokeThickness());
}

static QPainterPath pathForGlyphs(const QGlyphRun& glyphRun, const QPointF& offset)
{
    QPainterPath path;
    const QRawFont rawFont(glyphRun.rawFont());
    const QVector<quint32> glyphIndices = glyphRun.glyphIndexes();
    const QVector<QPointF> positions = glyphRun.positions();
    for (int i = 0; i < glyphIndices.size(); ++i) {
        QPainterPath glyphPath = rawFont.pathForGlyph(glyphIndices.at(i));
        glyphPath.translate(positions.at(i) + offset);
        path.addPath(glyphPath);
    }
    return path;
}

static void drawQtGlyphRun(GraphicsContext& context, const QGlyphRun& qtGlyphRun, const QPointF& point, int baseLineOffset)
{
    QPainter* painter = context.platformContext();

    QPainterPath textStrokePath;
    if (context.textDrawingMode() & TextModeStroke)
        textStrokePath = pathForGlyphs(qtGlyphRun, point);

    if (context.hasShadow()) {
        const GraphicsContextState& state = context.state();
        if (context.mustUseShadowBlur()) {
            ShadowBlur shadow(state);
            const int width = qtGlyphRun.boundingRect().width();
            const QRawFont& font = qtGlyphRun.rawFont();
            const int height = font.ascent() + font.descent();
            const QRectF boundingRect(point.x(), point.y() - font.ascent() + baseLineOffset, width, height);
            GraphicsContext* shadowContext = shadow.beginShadowLayer(context, boundingRect);
            if (shadowContext) {
                QPainter* shadowPainter = shadowContext->platformContext();
                shadowPainter->setPen(state.shadowColor);
                if (shadowContext->textDrawingMode() & TextModeFill)
                    shadowPainter->drawGlyphRun(point, qtGlyphRun);
                else if (shadowContext->textDrawingMode() & TextModeStroke)
                    shadowPainter->strokePath(textStrokePath, shadowPainter->pen());
                shadow.endShadowLayer(context);
            }
        } else {
            QPen previousPen = painter->pen();
            painter->setPen(state.shadowColor);
            const QPointF shadowOffset(state.shadowOffset.width(), state.shadowOffset.height());
            painter->translate(shadowOffset);
            if (context.textDrawingMode() & TextModeFill)
                painter->drawGlyphRun(point, qtGlyphRun);
            else if (context.textDrawingMode() & TextModeStroke)
                painter->strokePath(textStrokePath, painter->pen());
            painter->translate(-shadowOffset);
            painter->setPen(previousPen);
        }
    }

    if (context.textDrawingMode() & TextModeStroke)
        painter->strokePath(textStrokePath, strokePenForContext(context));

    if (context.textDrawingMode() & TextModeFill) {
        QPen previousPen = painter->pen();
        painter->setPen(fillPenForContext(context));
        painter->drawGlyphRun(point, qtGlyphRun);
        painter->setPen(previousPen);
    }
}

void Font::initFormatForTextLayout(QTextLayout* layout, const TextRun& run) const
{
    QTextLayout::FormatRange range;
    // WebCore expects word-spacing to be ignored on leading spaces contrary to what Qt does.
    // To avoid word-spacing on any leading spaces, we exclude them from FormatRange which
    // word-spacing along with other options would be applied to. This is safe since the other
    // formatting options does not affect spaces.
    unsigned length = run.length();
    for (range.start = 0; range.start < length; ++range.start) { }
    range.length = length - range.start;

    if (range.format.propertyCount() && range.length)
        layout->setAdditionalFormats(QList<QTextLayout::FormatRange>() << range);
}

QFont Font::syntheticFont() const
{
    QRawFont rawFont = this->rawFont();
    QFont f(rawFont.familyName());
    if (rawFont.pixelSize())
        f.setPixelSize(rawFont.pixelSize());
    f.setWeight(rawFont.weight());
    f.setStyle(rawFont.style());
    return f;
}


QRawFont Font::rawFont() const
{
    return m_platformData.rawFont();
}

}
