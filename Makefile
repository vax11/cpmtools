# Makefile to assmeble z80 sources and convert to intel hex format for CP/M LOAD command
Z80ASM=z80asm
OBJCOPY=objcopy

SOURCES=$(wildcard *.zasm)
TARGETS=$(SOURCES:.zasm=.hex)
TARGETS+=$(SOURCES:.zasm=.bin)

all: $(TARGETS)

clean: 
	rm -f $(TARGETS)

%.hex: %.bin
	$(OBJCOPY) -Ibinary --change-addresses=0x100 -Oihex $< $@
	sed -i -e '/:04000003/d' $@		# Delete record type 3 (start address) that confuses CP/M

%.bin: %.zasm
	$(Z80ASM) -o$@ -l$*.lst $<
