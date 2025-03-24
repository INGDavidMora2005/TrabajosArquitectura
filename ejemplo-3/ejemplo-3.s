
.data

mensaje: .asciz "%d %d \r\n"

.text
.global main
.extern printf     # Similar al include de C

main:
_start:
    
    mov $4, %rax
    mov $5, %rbx

    movq $mensaje, %rdi
    movq %rax, %rsi
    movq %rbx, %rdx
   
    call imprimir
    call salir

salir:
    # Salir al sistema
    mov $60, %rax
    mov $0, %rdi
    syscall
    ret

imprimir:

   subq $8, %rsp     #alineamos los datos

    # RAX se pone en 0 para indicar que necesitamos 0 registros de punto flotante
    movq $0, %rax     # rax=0  Toca memoria
    xorq %rax, %rax     # rax=0  No toca memoria
    
    call printf
    
    addq $8, %rsp
    
    ret
