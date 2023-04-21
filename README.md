# vax11's cpm tools

This contains a set of tools that can be used on CP/M. I've written these
mostly for me to use on TeleVideo systems, but they should be usable
elsewhere.

## File types

`Makefile` is a GNU Makefile which will build the `.hex` and `.bin` files   
`X.hex` is the Intel HEX format version of the executable as built by me.   
`X.zasm` is the Z80 assembly source code.   
`X.readme` is more detailed instructions on how to use the program.   

## Building code

z80asm is needed to assemble the code. I use the z80asm package on Debian:
[https://packages.debian.org/source/bullseye/z80asm](https://packages.debian.org/source/bullseye/z80asm)

You should be able to edit the code, and then just run `make` to build.

## Loading onto a CP/M host

The basic method to get these onto a CP/M system, is to do it over 
the console with a terminal emulator that lets you send an ASCII file,
or over another serial port associated with PTR:

`A> PIP COMMAND.HEX=CON:` or `A> PIP COMMAND.HEX=PTR:` or another device 
per your CP/M implementation

To convert the HEX to a COM file: `A> LOAD COMMAND`

## Tools

### DUMPDSK

`DUMPDSK` allows you to dump a disk on a CP/M machine, by spitting out
the contents in Intel HEX format.
