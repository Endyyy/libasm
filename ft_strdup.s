global ft_strdup
extern ft_strlen
extern malloc
extern ft_strcpy
extern __errno_location

section .text
    ft_strdup:
        push rdi
        call ft_strlen
        inc rax
        mov rdi, rax
        call malloc
        cmp rax, 0
        je error
        mov rdi, rax
        pop rsi
        sub rsp, 8
        call ft_strcpy
        add rsp, 8
        ret

error:
    call __errno_location
    mov [rax], byte 12
    mov rax, 0
    ret