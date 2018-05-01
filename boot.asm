[org 0x7c00]
;mov ah, 0x0e ;scrolling teletype routine EG print to screen

mov bx, HELLO_MSG
call print

mov bx, 0x1fb6
call print_hex

jmp $

%include "io.asm"

HELLO_MSG:
	db 'Hello, Oshi', 0

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55 
