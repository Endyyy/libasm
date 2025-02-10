section .data

section .bss

section .text
    global ft_strlen

ft_strlen:
    mov ebx, 0x0
loop:
 
    mov al, [rdi]
    cmp al, 0x0
    je end 
    inc ebx
    inc rdi
    jmp loop

end:    
    mov eax, ebx
    ret