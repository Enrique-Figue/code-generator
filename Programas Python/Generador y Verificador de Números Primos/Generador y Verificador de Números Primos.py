def es_primo(numero):
    """Determina si un número es primo."""
    if numero < 2:
        return False
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            return False
    return True

def generar_primos(maximo):
    """Genera lista de números primos hasta el valor máximo especificado."""
    return [num for num in range(2, maximo + 1) if es_primo(num)]

try:
    entrada = input("Ingrese un número entero positivo: ")
    n = int(entrada)
    if n < 2:
        print("El número debe ser mayor o igual a 2.")
    else:
        primos = generar_primos(n)
        print(f"Números primos hasta {n}:")
        print(", ".join(map(str, primos)))
except ValueError:
    print("Error: Debe ingresar un número entero válido.")