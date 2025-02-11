global ft_write
extern __errno_location

section .text
    ft_write:
        mov rax, 1
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
