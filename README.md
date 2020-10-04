# Vobe OS

## requirements

- nasm
- qemu

## building

```sh
nasm main.nasm -f bin -o build/main.bin
```

## staring

```sh
qemu-system-x86_64 -hda build/main.bin -boot c
```

### without gui

```sh
qemu-system-x86_64 -nographic -hda build/main.bin -boot c
```
