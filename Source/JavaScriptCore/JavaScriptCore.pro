# -------------------------------------------------------------------
# Main project file for JavaScriptSource
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

TEMPLATE = subdirs
CONFIG += ordered

LLIntOffsetsExtractor.file = LLIntOffsetsExtractor.pro
LLIntOffsetsExtractor.makefile = Makefile.LLIntOffsetsExtractor
SUBDIRS += LLIntOffsetsExtractor

bytecode.file = Bytecode.pri
derived_sources.file = DerivedSources.pri
target.file = Target.pri

SUBDIRS += bytecode derived_sources target

addStrictSubdirOrderBetween(bytecode, LLIntOffsetsExtractor)
addStrictSubdirOrderBetween(LLIntOffsetsExtractor, derived_sources)
addStrictSubdirOrderBetween(derived_sources, target)

jsc.file = jsc.pro
jsc.makefile = Makefile.jsc
SUBDIRS += jsc
