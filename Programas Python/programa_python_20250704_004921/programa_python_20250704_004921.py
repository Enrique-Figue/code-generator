# Fibonacci Sequence Generator

n = int(input("Ingrese un número para generar la secuencia de Fibonacci: "))

if n <= 0:
    print("Por favor ingrese un número entero positivo.")
else:
    a, b = 0, 1
    secuencia = []
    for _ in range(n):
        secuencia.append(a)
        a, b = b, a + b
    print(f"Secuencia de Fibonacci para n={n}: {secuencia}")