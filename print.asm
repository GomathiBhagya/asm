BITS 32

extern printf

section .rodata
	out: db "Nama Shivaya",10,0

section .text
	global main
	
	main:
		push ebp
		mov ebp,esp

		push out
		call printf

		mov esp,ebp
		pop ebp		
		ret
