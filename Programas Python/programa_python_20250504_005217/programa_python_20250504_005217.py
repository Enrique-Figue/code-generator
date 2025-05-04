# Factorial Calculator
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

try:
    num = int(input("Ingrese un número entero no negativo: "))
    if num < 0:
        print("El número debe ser no negativo.")
    else:
        print(f"El factorial de {num} es {factorial(num)}")
except ValueError:
    print("Entrada inválida. Por favor ingrese un número entero.")