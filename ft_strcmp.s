section .text
    global ft_strcmp

ft_strcmp:

loop:
   
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, 0x0
    jz end
    cmp bl, 0x0
    jz end
    cmp al, bl
    jne end 
    inc rdi
    inc rsi
    jmp loop

end:   
    sub al, bl
    movsx eax,  al
    ret