
.code  
	extern DrMyHookFunc:proc
	extern jmp_back_original_present:dq

	SetHookGeneral_present proc
		

		push rax
		push rbx
		push rcx
		push rdx
		push rbp
		push rsp
		push rsi
		push rdi
		push r8
		push r9
		push r10
		push r11
		push r12
		push r13
		push r14
		push r15
		pushfq

		sub rsp,20h 
		call [DrMyHookFunc] 
		add rsp,20h 

		popfq
		pop r15
		pop r14
		pop r13
		pop r12
		pop r11
		pop r10
		pop r9
		pop r8
		pop rdi
		pop rsi
		pop rsp
		pop rbp
		pop rdx
		pop rcx
		pop rbx
		pop rax

		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		jmp [jmp_back_original_present]
	SetHookGeneral_present endp
end