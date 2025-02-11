global ft_read
extern __errno_location

section .text
    ft_read:
        mov rax, 0
        syscall
        cmp rax, 0
        jl error
        ret

    error:
        mov rbx, rax
        neg rbx
        call __errno_location
        mov [rax], rbx
        mov rax, -1
        ret
