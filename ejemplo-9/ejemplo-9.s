.text

.global calculadoraCiclos

calculadoraCiclos:
    # xmm0 funcion (xmm0, rsi, xmm1)
    # mulss = SS significa S(scalar: escalar) y S(single: float)
    mulss %xmm1, %xmm0

# Queremos realizar n ciclos (rsi = 5)
# Implementacion while
ciclos:
    cmp $0, %rdi         # Comparacion entre rsi y cero
    je fin               # Posemos usar je o jz arbitrariamente

    addss %xmm0, %xmm0   # xmm0 = xmm0 + xmm0

    dec %rdi
    jmp ciclos

fin:
    ret
