;print "function"
print:
	pusha

start:
        mov al, [bx]
        cmp al, 0
        je done

        mov ah, 0x0e
        int 0x10
        add bx, 1
        jmp start

done:
        popa 
        ret

;Println "function"
println:
	pusha

startln:
	mov al, [bx]
	cmp al, 0
	je doneln

	mov ah, 0x0e
	int 0x10
	add bx, 1
	jmp startln

doneln:
	;output newline & return characters here
	mov ah, 0x0e
	mov al, 0x0a
	int 0x10
	mov al, 0x0d
	int 0x10

	popa
	ret
