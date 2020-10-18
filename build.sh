rmdir build
mkdir build
nasm -f elf32 kernel.asm -o build/kasm.o
gcc -m32 -c kernel.c -o build/kc.o
ld -m elf_i386 -T link.ld -o build/kernel build/kasm.o build/kc.o