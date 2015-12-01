/*
 * Copyright (C) 2007, 2008 Apple Inc. All Rights Reserved.
 * Copyright (C) 2007 Staikos Computing Services Inc. <info@staikos.net>
 * Copyright (C) 2008 Nokia Corporation and/or its subsidiary(-ies)
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "ScrollbarThemeQStyle.h"

#include "GraphicsContext.h"
#include "PlatformMouseEvent.h"
#include "RenderThemeQStyle.h"
#include "ScrollView.h"
#include "Scrollbar.h"

#include <QGuiApplication>

namespace WebCore {

ScrollbarThemeQStyle::ScrollbarThemeQStyle()
{
    m_qStyle = std::make_unique<QStyleFacade>(RenderThemeQStyle::styleFactory());
}

ScrollbarThemeQStyle::~ScrollbarThemeQStyle()
{
}

static QStyleFacade::SubControl scPart(const ScrollbarPart& part)
{
    switch (part) {
    case NoPart:
        return QStyleFacade::SC_None;
    case BackButtonStartPart:
    case BackButtonEndPart:
        return QStyleFacade::SC_ScrollBarSubLine;
    case BackTrackPart:
        return QStyleFacade::SC_ScrollBarSubPage;
    case ThumbPart:
        return QStyleFacade::SC_ScrollBarSlider;
    case ForwardTrackPart:
        return QStyleFacade::SC_ScrollBarAddPage;
    case ForwardButtonStartPart:
    case ForwardButtonEndPart:
        return QStyleFacade::SC_ScrollBarAddLine;
    }

    return QStyleFacade::SC_None;
}

static ScrollbarPart scrollbarPart(const QStyleFacade::SubControl& sc)
{
    switch (sc) {
    case QStyleFacade::SC_None:
        return NoPart;
    case QStyleFacade::SC_ScrollBarSubLine:
        return BackButtonStartPart;
    case QStyleFacade::SC_ScrollBarSubPage:
        return BackTrackPart;
    case QStyleFacade::SC_ScrollBarSlider:
        return ThumbPart;
    case QStyleFacade::SC_ScrollBarAddPage:
        return ForwardTrackPart;
    case QStyleFacade::SC_ScrollBarAddLine:
        return ForwardButtonStartPart;
    }
    return NoPart;
}

bool ScrollbarThemeQStyle::paint(Scrollbar& scrollbar, GraphicsContext& graphicsContext, const IntRect& dirtyRect)
{
    return false;
}

void ScrollbarThemeQStyle::paintScrollCorner(ScrollView*, GraphicsContext* context, const IntRect& rect)
{
    StylePainterQStyle p(this, context);
    if (!p.isValid())
        return;

    p.paintScrollCorner(rect);
}

IntRect ScrollbarThemeQStyle::backButtonRect(Scrollbar&, ScrollbarPart, bool)
{
    return IntRect();
}

IntRect ScrollbarThemeQStyle::forwardButtonRect(Scrollbar&, ScrollbarPart, bool)
{
    return IntRect();
}

IntRect ScrollbarThemeQStyle::trackRect(Scrollbar&, bool)
{
    return IntRect();
}

}

