print("Este programa genera los primeros 'n' números de la secuencia Fibonacci.")

while True:
    try:
        n = int(input("\nIngrese un número entero positivo: "))
        if n <= 0:
            raise ValueError
        break
    except ValueError:
        print("¡Error! Debes ingresar un número entero positivo.")

fib_sequence = []
a, b = 0, 1

for _ in range(n):
    fib_sequence.append(a)
    a, b = b, a + b

print(f"\nSecuencia Fibonacci de {n} términos:")
print(", ".join(map(str, fib_sequence)))