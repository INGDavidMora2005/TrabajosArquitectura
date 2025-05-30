#include <stdio.h>
#include <stdlib.h>

// rax                  (rdi   , rsi  , rdx)      int
// xmm0                 (xmm0) , xmm1 , xmm2)     floats | doubles
// Mezclando:
// rax                  (xmm0  , rdi  , xmm2)
   float calculadoraCiclos(float, int, float);

int main(int numArgs, char ** args){

    float pi = 3.1415926535F;
    int ciclos = 5;
    float radio = 2.41F;
    float resultado;

    resultado = calculadoraCiclos(pi, ciclos, radio);
    printf("\r\n");
    printf("Radio: %f, Ciclos: %d, Resultado: %f",radio, ciclos, resultado);
    printf("\r\n");

    exit(EXIT_SUCCESS);
}
