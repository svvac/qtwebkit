# -------------------------------------------------------------------
# Derived sources for JavaScriptSource
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

TEMPLATE = derived

NATIVE_LUT_FILES += \
    runtime/BooleanPrototype.cpp \
    runtime/DateConstructor.cpp \
    runtime/DatePrototype.cpp \
    runtime/ErrorPrototype.cpp \
    runtime/IntlCollatorConstructor.cpp \
    runtime/IntlCollatorPrototype.cpp \
    runtime/IntlDateTimeFormatConstructor.cpp \
    runtime/IntlDateTimeFormatPrototype.cpp \
    runtime/IntlNumberFormatConstructor.cpp \
    runtime/IntlNumberFormatPrototype.cpp \
    runtime/JSDataViewPrototype.cpp \
    runtime/JSONObject.cpp \
    runtime/NumberConstructor.cpp \
    runtime/NumberPrototype.cpp \
    runtime/RegExpConstructor.cpp \
    runtime/RegExpPrototype.cpp \
    runtime/SymbolConstructor.cpp \
    runtime/SymbolPrototype.cpp \

BUILTIN_OBJECT_LUT_FILES += \
    runtime/ArrayConstructor.cpp \
    runtime/ArrayIteratorPrototype.cpp \
    runtime/InspectorInstrumentationObject.cpp \
    runtime/JSGlobalObject.cpp \
    runtime/JSInternalPromiseConstructor.cpp \
    runtime/JSPromiseConstructor.cpp \
    runtime/JSPromisePrototype.cpp \
    runtime/ModuleLoaderObject.cpp \
    runtime/ObjectConstructor.cpp \
    runtime/ReflectObject.cpp \
    runtime/StringConstructor.cpp \
    runtime/StringIteratorPrototype.cpp \

BUILTINS_SOURCES += \
    builtins/ArrayConstructor.js \
    builtins/ArrayIterator.prototype.js \
    builtins/Array.prototype.js \
    builtins/Function.prototype.js \
    builtins/GlobalObject.js \
    builtins/InspectorInstrumentationObject.js \
    builtins/InternalPromiseConstructor.js \
    builtins/Iterator.prototype.js \
    builtins/ModuleLoaderObject.js \
    builtins/ObjectConstructor.js \
    builtins/Operations.Promise.js \
    builtins/PromiseConstructor.js \
    builtins/Promise.prototype.js \
    builtins/ReflectObject.js \
    builtins/StringConstructor.js \
    builtins/StringIterator.prototype.js \
    builtins/TypedArray.prototype.js \
    builtins/TypedArrayConstructor.js \

INSPECTOR_FILES += \
    inspector/InspectorBackendDispatchers.cpp \
    inspector/InspectorBackendDispatchers.h \
    inspector/InspectorFrontendDispatchers.cpp \
    inspector/InspectorFrontendDispatchers.h \
    inspector/InspectorProtocolObjects.cpp \
    inspector/InspectorProtocolObjects.h \
    inspector/InspectorBackendCommands.js \

INSPECTOR_DOMAINS += \
    inspector/protocol/ApplicationCache.json \
    inspector/protocol/CSS.json \
    inspector/protocol/Console.json \
    inspector/protocol/DOM.json \
    inspector/protocol/DOMDebugger.json \
    inspector/protocol/DOMStorage.json \
    inspector/protocol/Database.json \
    inspector/protocol/Debugger.json \
    inspector/protocol/GenericTypes.json \
    inspector/protocol/Heap.json \
    inspector/protocol/Inspector.json \
    inspector/protocol/LayerTree.json \
    inspector/protocol/Network.json \
    inspector/protocol/OverlayTypes.json \
    inspector/protocol/Page.json \
    inspector/protocol/Runtime.json \
    inspector/protocol/Timeline.json \
    inspector/protocol/Worker.json \

KEYWORDLUT_FILES += \
    parser/Keywords.table

JIT_STUB_FILES += \
    jit/JITStubs.cpp

LLINT_ASSEMBLER = $$PWD/llint/LowLevelInterpreter.asm

LLINT_DEPENDENCY = \
    $$PWD/llint/LowLevelInterpreter32_64.asm \
    $$PWD/llint/LowLevelInterpreter64.asm \
    $$LLINT_ASSEMBLER

DISASSEMBLER_FILES = \
    disassembler/udis86/optable.xml

DISASSEMBLER_DEPENDENCY = \
    $$PWD/disassembler/udis86/ud_opcode.py \
    $$PWD/disassembler/udis86/ud_optable.py

# GENERATOR 1-A: LUT creator
lut.output = ${QMAKE_FILE_BASE}.lut.h
lut.input = NATIVE_LUT_FILES
lut.script = $$PWD/create_hash_table
lut.commands = perl $$lut.script ${QMAKE_FILE_NAME} -i > ${QMAKE_FILE_OUT}
lut.depends = ${QMAKE_FILE_NAME}
GENERATORS += lut

lut_builtin.output = ${QMAKE_FILE_BASE}.lut.h
lut_builtin.input = BUILTIN_OBJECT_LUT_FILES
lut_builtin.script = $$PWD/create_hash_table
lut_builtin.commands = perl $$lut_builtin.script ${QMAKE_FILE_NAME} -i -b > ${QMAKE_FILE_OUT}
lut_builtin.depends = ${QMAKE_FILE_NAME}
GENERATORS += lut_builtin

# GENERATOR 1-B: particular LUT creator (for 1 file only)
keywordlut.output = Lexer.lut.h
keywordlut.input = KEYWORDLUT_FILES
keywordlut.script = $$PWD/create_hash_table
keywordlut.commands = perl $$keywordlut.script ${QMAKE_FILE_NAME} -i > ${QMAKE_FILE_OUT}
keywordlut.depends = ${QMAKE_FILE_NAME}
GENERATORS += keywordlut

#GENERATOR: "RegExpJitTables.h": tables used by Yarr
retgen.output = RegExpJitTables.h
retgen.script = $$PWD/create_regex_tables
retgen.input = retgen.script
retgen.commands = python $$retgen.script > ${QMAKE_FILE_OUT}
GENERATORS += retgen

#GENERATOR: "KeywordLookup.h": decision tree used by the lexer
klgen.output = KeywordLookup.h
klgen.script = $$PWD/KeywordLookupGenerator.py
klgen.input = KEYWORDLUT_FILES
klgen.commands = python $$klgen.script ${QMAKE_FILE_NAME} > ${QMAKE_FILE_OUT}
GENERATORS += klgen

# GENERATOR:
inspector_comb.output = CombinedDomains.json
inspector_comb.script = $$PWD/Scripts/generate-combined-inspector-json.py
inspector_comb.input = inspector_comb.script
inspector_comb.commands = python $$inspector_comb.script \
  $${INSPECTOR_DOMAINS} > ${QMAKE_FILE_OUT}
GENERATORS += inspector_comb

# GENERATOR: Inspector Backend Dispatchers, Frontend Dispatchers, Type Builders
inspector.output = $${INSPECTOR_FILES}
inspector.script = $$PWD/inspector/scripts/generate-inspector-protocol-bindings.py
inspector.input = inspector.script
inspector.commands = python $$inspector.script \
  --outputDir "$$PWD/generated/inspector" \
  --framework JavaScriptCore generated/CombinedDomains.json
GENERATORS += inspector

# GENERATOR: "JSCBuiltins"
jscbuiltins.output = JSCBuiltins.h
jscbuiltins.script = $$PWD/Scripts/generate-js-builtins.py
jscbuiltins.input = jscbuiltins.script
jscbuiltins.commands = python $$jscbuiltins.script \
  --framework JavaScriptCore \
  --output-directory $$PWD$${QMAKE_DIR_SEP}generated \
  --combined $${BUILTINS_SOURCES}
GENERATORS += jscbuiltins

# GENERATOR: InjectedScriptSource.h
# STEP 1: minify JavaScript source
injected_min.output = InjectedScriptSource.min.js
injected_min.script = $$PWD/Scripts/jsmin.py
injected_min.input = injected_min.script
injected_min.commands = python $$injected_min.script \
  < $$PWD/inspector/InjectedScriptSource.js \
  >> ${QMAKE_FILE_OUT}
GENERATORS += injected_min

# STEP 2: Generate header file
injected.output = InjectedScriptSource.h
injected.script = $$PWD/Scripts/xxd.pl
injected.input = injected.script
injected.commands = perl $$injected.script \
  InjectedScriptSource_js $$PWD/generated/InjectedScriptSource.min.js \
  ${QMAKE_FILE_OUT}
GENERATORS += injected

EXTRACTOR_BINARY = LLIntOffsetsExtractor$$BIN_EXTENSION
DIRS = $$OUT_PWD $$OUT_PWD/debug $$OUT_PWD/release
for(dir, DIRS) {
    file = $$dir/$$EXTRACTOR_BINARY
    exists($$file): LLINT_FILES += $$file
}

#GENERATOR: LLInt
msvc: {
  llint.output = ${QMAKE_FILE_IN_PATH}$${QMAKE_DIR_SEP}LowLevelInterpreterWin.asm
} else {
  llint.output = ${QMAKE_FILE_IN_PATH}$${QMAKE_DIR_SEP}LLIntAssembly.h
}

llint.script = $$PWD/offlineasm/asm.rb
llint.input = LLINT_FILES
llint.depends = $$LLINT_DEPENDENCY
llint.commands = ruby $$llint.script \
  $$LLINT_ASSEMBLER ${QMAKE_FILE_IN} ${QMAKE_FILE_OUT}
GENERATORS += llint


linux-*:if(isEqual(QT_ARCH, "i386")|isEqual(QT_ARCH, "x86_64")) {
    # GENERATOR: disassembler
    disassembler.output = udis86_itab.c
    disassembler.input = DISASSEMBLER_FILES
    disassembler.script = $$PWD/disassembler/udis86/itab.py
    disassembler.depends = $$DISASSEMBLER_DEPENDENCY
    disassembler.commands = python $$disassembler.script ${QMAKE_FILE_NAME} --outputDir ${QMAKE_FUNC_FILE_OUT_PATH}
    disassembler.CONFIG += no_link
    GENERATORS += disassembler
}
