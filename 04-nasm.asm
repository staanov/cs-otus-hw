%include 'library.asm'
section .data
	;arr dd 'u', 'd', 'd', 'u', 'u', 'd', 'd', 'u'
	arr dd 'u', 'd', 'd'
	n dd 4

section .text
global _start
_start:

	BEGIN:
    	xor eax, eax
    	xor edx, edx
    	mov ecx, [n]
    	mov ebx, arr
    	jmp L1
    
	UP:
    	inc edx
    	jmp L1

	DOWN:
    	dec edx
        jmp L1

	STAY:
    	mov eax, 1
    	jmp OUTPUT

	L1:
    	mov eax, [ebx]
    	add ebx, 4
    	cmp eax, 'u'
    	je UP
    	cmp eax, 'd'
    	je DOWN
    	loop L1

	cmp edx, 0
	je STAY
    
	xor eax, eax

	OUTPUT:
    	call print_number
    	call exit
