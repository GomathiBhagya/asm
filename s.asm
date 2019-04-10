BITS 32

extern printf
extern scanf
	
section .data
	out: db "Enter the limit : ",10,0
	res: db "%d ",0
	
	;integer1: times 4 db 0 
	lim : dd 0	
	res1: db "%d",0
	

	a: dd 0
	b:dd 0
	cnt: dd 0
	
section .text
	global main
	
	main:
		push ebp
		mov ebp,esp

		push out
		call printf
		 
		push lim
		push res1
		call scanf
		
		cmp DWORD[lim],0
		je end
		

		mov ebx,0
		push ebx
		push res
		call printf
	
		cmp DWORD[lim],1
		je end
		
		mov ecx,1
		push ecx
		push res
		call printf
		
		cmp DWORD[lim],2
		je end
	
		sub DWORD[lim],2
		loop:
		
		add ebx,ecx
		mov edx,ebx
		mov DWORD[a],ecx
		mov DWORD[b],edx		
	

			
		push edx
		push res
		call printf

	
		mov ebx,DWORD[a]
		mov ecx,DWORD[b]
		
		add DWORD[cnt],1
		mov  edx,DWORD[cnt]
		cmp edx,DWORD[lim]

		jl loop
		
		end:
				
		mov esp,ebp
		pop ebp
		ret
		
