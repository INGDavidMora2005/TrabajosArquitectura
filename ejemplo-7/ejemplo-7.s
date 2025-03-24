

.text
.global suma_float


# Para los flotantes se utilizan los registros xmm (son de 128 bits)
# segun Systen V:
# xmm0 funcion (xmm0, xmm1, xmm2, ....) En ensamblador
#float funcion (float1, float2, float3, ....) En lenguaje C

suma_float:
    addss %xmm1, %xmm0  # xmm0 = xmm0 + xmm1
    ret

# addss: Add Scalar single presicion
# (Sumar un escalar de presicion simple, es decir float)

