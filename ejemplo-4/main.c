// Programa que  muestra las llamadas a funciones hechas por assembly

#include<stdio.h>
#include <stdlib.h>

//rax       rdi, rsi
  int sumar(int, int);

int main(int numeroParametros, char ** argumentos){

    int resultado;
    int num1=5;
    int num2=6;
    printf("El numero de parametros en la linea de comandos fue %d\r\n", numeroParametros);
    resultado = sumar(num1, num2);
    printf("La suma de %d y %d es: %d\r\n", num1, num2, resultado);
    
    return (EXIT_SUCCESS);
}

