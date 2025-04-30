section .text
    global multiplicar
multiplicar:
    imul rdi, rsi
    mov rax, rdi
    ret
