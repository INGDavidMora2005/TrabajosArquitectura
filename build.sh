#!/bin/bash

echo "==> Compilando clase Java y generando encabezado JNI..."
javac -h . PuntoFijo.java

echo "==> Compilando codigo en C con JNI..."
gcc -c -fPIC PuntoFijo.c -o PuntoFijo.o -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/linux"

echo "==> Compilando archivo ensamblador..."
nasm -f elf64 func.asm -o func.o

echo "==> Generando biblioteca compartida..."
gcc -shared -o libpuntofijo.so PuntoFijo.o func.o

echo "✅ Biblioteca 'libpuntofijo.so' generada correctamente."
