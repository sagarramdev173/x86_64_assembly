# Default program name (change this to your default program name if desired)
PROGRAM = ex8

# File names derived from the program name
ASM_FILE = $(PROGRAM).asm
OBJ_FILE = $(PROGRAM).o
BIN_FILE = $(PROGRAM)

# Targets
all: build run

build: $(OBJ_FILE) $(BIN_FILE)

$(OBJ_FILE): $(ASM_FILE)
	@echo "Creating $(ASM_FILE) file into object file $(OBJ_FILE)"
	nasm -f elf32 $(ASM_FILE) -o $(OBJ_FILE)

$(BIN_FILE): $(OBJ_FILE)
	@echo "Creating binary file $(BIN_FILE)"
	ld -m elf_i386 $(OBJ_FILE) -o $(BIN_FILE)

run: $(BIN_FILE)
	@echo "Running binary $(BIN_FILE)"	
	@./$(BIN_FILE); EXIT_CODE=$$?; \
	echo "Exit code: $$EXIT_CODE"; \


.PHONY: clean

clean:
	rm -f $(OBJ_FILE) $(BIN_FILE)
