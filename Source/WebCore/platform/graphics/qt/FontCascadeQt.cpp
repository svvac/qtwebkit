#include "config.h"
#include "FontCascade.h"

#include "NotImplemented.h"

namespace WebCore
{

void FontCascade::drawGlyphs(GraphicsContext &, const Font &, const GlyphBuffer &, int from, int numGlyphs, const FloatPoint &) const
{
    notImplemented();
}

bool FontCascade::canReturnFallbackFontsForComplexText()
{
    return false;
}

bool FontCascade::canExpandAroundIdeographsInComplexText()
{
    return false;
}

float FontCascade::drawComplexText(GraphicsContext &, const TextRun &, const FloatPoint &, int from, int to) const
{
    notImplemented();
    return 0;
}

void FontCascade::drawEmphasisMarksForComplexText(GraphicsContext &, const TextRun &, const WTF::AtomicString &mark, const FloatPoint &, int from, int to) const
{
    notImplemented();
}

float FontCascade::floatWidthForComplexText(const TextRun &, HashSet<const Font *> *fallbackFonts, GlyphOverflow *) const
{
    notImplemented();
    return 0;
}

int FontCascade::offsetForPositionForComplexText(const TextRun &, float position, bool includePartialGlyphs) const
{
    notImplemented();
    return 0;
}

void FontCascade::adjustSelectionRectForComplexText(const TextRun &, LayoutRect &selectionRect, int from, int to) const
{
    notImplemented();
}


}
