.section .data

    mensaje: .asciz "%d\n"      # Se almacena el mensaje que se imprime

.section .text

    .global imprimir_numeros    # La funcion imprimir_numeros se puede usar en otro archivo
    .extern printf              # Le dice a ensamblador que printf esta en otro lado

imprimir_numeros:
    pushq %rbp                  # Guarda el valor actual de rbp

    movq $1, %rsi               # Almacena 1 en el registro rsi
    movq $10, %rbx              # Almacena 10 en el registro rbx

loop:
    cmp %rsi, %rbx              # Compara el 1 con 10, termina cuando rsi es mayor que rbx
    jg fin                      # Si se cumple lo anterior se salta al bloque de la funcion fin y termina el programa

    movq $mensaje, %rdi         # Se guarda la direccion del mensaje en rdi
    movq %rsi, %rdx             #
    xorq %rax, %rax             # Pone rax en 0 para printf
    call printf                 # LLama a la funcion printf

    inc %rsi                    # Aumenta rsi de 1 en 1
    jmp loop                    # Repite el proceso del bucle

fin:
    popq %rbp                   # restaura el valor de rbp
    ret                         # La pila queda limpia
