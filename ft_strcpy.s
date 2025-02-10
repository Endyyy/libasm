section .text
    global ft_strcpy

ft_strcpy:
    push rdi
loop:
   
    cmp byte [rsi], 0
    je end
    mov cl, [rsi]
    mov [rdi], cl
    inc rdi
    inc rsi
    jmp loop

end:   
    mov cl, 0
    mov [rdi], cl
    pop rax
    ret