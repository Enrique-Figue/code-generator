def es_primo(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def obtener_divisores(n):
    divisores = set()
    for i in range(1, int(n**0.5) + 1):
        if n % i == 0:
            divisores.add(i)
            divisores.add(n // i)
    return sorted(divisores)

def factorizacion_prima(n):
    factores = {}
    divisor = 2
    while divisor * divisor <= n:
        while n % divisor == 0:
            factores[divisor] = factores.get(divisor, 0) + 1
            n //= divisor
        divisor += 1
    if n > 1:
        factores[n] = 1
    return factores

def formatear_factores(factores):
    return ' * '.join(f"{k}^{v}" if v > 1 else f"{k}" for k, v in factores.items())

try:
    numero = int(input("Ingrese un número entero positivo: "))
    if numero <= 0:
        raise ValueError
except ValueError:
    print("Por favor, ingrese un número entero positivo válido.")
else:
    print(f"\nPropiedades del número {numero}:")
    print(f"- ¿Es primo? {'sí' if es_primo(numero) else 'no'}")
    print(f"- Divisores: {obtener_divisores(numero)}")
    if numero == 1:
        print("- Factorización prima: El 1 no tiene factores primos.")
    else:
        factores = factorizacion_prima(numero)
        print(f"- Factorización prima: {formatear_factores(factores)}")