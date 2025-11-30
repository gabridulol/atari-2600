# Makefile for Atari 2600: assemble with dasm and run with Stella

ASM = boxing.asm
ROM = boxing.bin

all: $(ROM)

$(ROM): $(ASM)
	dasm $(ASM) -o$(ROM) -f3

run: $(ROM)
	stella $(ROM) -fullscreen 1

clean:
	rm -f $(ROM)

.PHONY: all run clean