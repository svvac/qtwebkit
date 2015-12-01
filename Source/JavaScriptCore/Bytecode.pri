TEMPLATE = derived

bytecode.output = Bytecodes.h llint/InitBytecodes.asm
bytecode.input = bytecode.script
bytecode.script = $$PWD/generate-bytecode-files
bytecode.commands = python $$bytecode.script \
  --bytecodes_h $$PWD/Bytecodes.h \
  --init_bytecodes_asm $$PWD/llint/InitBytecodes.asm \
  $$PWD/bytecode/BytecodeList.json
GENERATORS += bytecode
