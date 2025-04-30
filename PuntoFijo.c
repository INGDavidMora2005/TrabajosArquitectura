#include <jni.h>
#include <math.h>
#include <stdio.h>
#include "PuntoFijo.h"

extern long multiplicar(long x, long y);

double g(double x) {
    return cos(x);
}

JNIEXPORT jdouble JNICALL Java_PuntoFijo_puntoFijo(JNIEnv *env, jobject obj, jdouble x0, jdouble tol, jint maxIter) {
    double x1;
    int iter = 0;
    while (iter < maxIter) {
        x1 = g(x0);
        if(fabs(x1 - x0) < tol)
            break;
        x0 = x1;
        iter++;
    }

    long veces10 = multiplicar(iter, 10);
    printf("Iteraciones * 10 (ensamblador): %ld\n", veces10);

    return x1;
}
