.data
mensaje: .asciz "%ld \n"     # String long double

.text
.global main
.extern printf    # Indico que quiero utilizar la funcion printf de lenguaje C

main:

  subq $8, %rsp     # Alineacion de datos

  mov  $4, %rax    # rax=4
  mov  $5, %rbx    # rbx=5
  add  %rbx, %rax  # rax=rax+rbx

  # Bloque de impresion
  # printf("%ld \n", rax);
  #          rdi   , rsi

  mov  $mensaje, %rdi
  mov  %rax, %rsi
  xorq $rax, %rax
  call printf

  addq $8, %rsp    # Alineacionde datos original

  # Salir al sistema
  mov $60, %rax    # Indico que vamos a usar la funcion sys_exit
  mov $0, %rdi     # Indico que el argumento o parametro tiene un valor de 0
  syscall          # No es parte de ensamblador pero llama las funciones del sistema

