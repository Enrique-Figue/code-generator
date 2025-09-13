n = input("Ingrese un número positivo: ")
try:
    n = int(n)
    if n < 0:
        raise ValueError
except ValueError:
    print("Debe ingresar un entero positivo.")
    exit()

fibonacci = [0, 1]
while True:
    siguiente = fibonacci[-1] + fibonacci[-2]
    if siguiente > n:
        break
    fibonacci.append(siguiente)

print(f"\nSecuencia Fibonacci hasta {n}: {fibonacci}")
if n in fibonacci:
    print(f"{n} es un número Fibonacci.")
else:
    print(f"{n} no está en la secuencia Fibonacci.")