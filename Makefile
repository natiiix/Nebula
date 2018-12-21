SRC=src/
ASM=$(SRC)main.asm
BIN=bin/nebula.bin

$(BIN): $(SRC)*.asm
	nasm -w+all -f bin -i $(SRC) -o $(BIN) $(ASM)

clean:
	rm $(BIN)

disassemble: $(BIN)
	objdump -b binary -Mintel -mi386 -Maddr16,data16 -D $(BIN)

hex: $(BIN)
	xxd $(BIN) | less
