#!/bin/sh

echo "creating $1.asm file into objectfile $1.o"
nasm -f elf32 $1.asm -o $1.o

echo "creating binary file $1"
ld -m elf_i386 $1.o -o $1

echo "running binary $1"
./$1


echo $?
