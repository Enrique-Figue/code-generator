def calcular_factorial(n):
    """Calcula el factorial de un número entero positivo n."""
    if n == 0:
        return 1
    factorial = 1
    for i in range(1, n + 1):
        factorial *= i
    return factorial

def es_primo(n):
    """Verifica si un número entero positivo n es primo."""
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

try:
    numero = int(input("Ingrese un entero positivo: "))
    if numero < 0:
        print("Error: Debe ingresar un número positivo.")
    else:
        print(f"Factorial de {numero}: {calcular_factorial(numero)}")
        if es_primo(numero):
            print(f"{numero} es un número primo.")
        else:
            print(f"{numero} no es un número primo.")
except ValueError:
    print("Error: Debe ingresar un número entero válido.")