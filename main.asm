mov ah, 0x0e
mov bl, 0x2

mov al, 'B'
jmp loop
  

loop:
  int 0x10
  add al, 0x20

  int 0x10
  sub al, 0x20

  inc al
  cmp al, 0x5A

  jge exit
  jmp loop

jmp exit

exit:
  jmp $

times 510-($-$$) db 0
db 0x55, 0xaa