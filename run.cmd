@echo off

rm -r build/*
nasm main.asm -f bin -o build/main.bin
qemu-system-x86_64 -nographic -drive format=raw,file=build/main.bin