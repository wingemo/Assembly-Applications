section .text
    global read_input

read_stdin:
    ; Read from stdin (standard input)
    mov rax, 0        ; sys_read
    mov rdi, 0        ; stdin file descriptor
    mov rdx, [rsi]    ; Load buffer_size from the parameter
    syscall           ; Make the system call

    ret
