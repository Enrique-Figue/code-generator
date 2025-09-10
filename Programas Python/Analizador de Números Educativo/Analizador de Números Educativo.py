def es_primo(n):
    """Determina si un número es primo."""
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def calcular_factorial(n):
    """Calcula el factorial de un número."""
    if n == 0 or n == 1:
        return 1
    factorial = 1
    for i in range(2, n + 1):
        factorial *= i
    return factorial

def obtener_factores(n):
    """Devuelve la lista de factores del número."""
    factores = []
    for i in range(1, n + 1):
        if n % i == 0:
            factores.append(i)
    return factores

numero = None
while numero is None:
    try:
        entrada = input("Ingrese un número entero positivo: ")
        num = int(entrada)
        if num < 0:
            raise ValueError
        numero = num
    except ValueError:
        print("Por favor, ingrese un número entero válido y positivo.")

print(f"\nAnálisis del número {numero}:")
print(f"- Paridad: {'Par' if numero % 2 == 0 else 'Impar'}")
print(f"- Primo: {'Sí' if es_primo(numero) else 'No'}")
if numero <= 20:
    print(f"- Factorial: {calcular_factorial(numero)}")
else:
    print("- Factorial: (muy grande para calcular)")
print(f"- Factores: {obtener_factores(numero)}")