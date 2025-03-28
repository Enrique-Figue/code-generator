def es_primo(numero):
    """Determina si un número es primo mediante divisores hasta su raíz cuadrada."""
    if numero < 2:
        return False
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            return False
    return True

def generar_primos_hasta(limite):
    """Genera una lista de números primos hasta el límite especificado."""
    return [numero for numero in range(2, limite + 1) if es_primo(numero)]

if __name__ == "__main__":
    try:
        entrada = int(input("Ingrese un número entero positivo: "))
        if entrada < 0:
            print("¡El número debe ser positivo!")
        else:
            primos = generar_primos_hasta(entrada)
            print(f"Números primos hasta {entrada}: {primos}")
    except ValueError:
        print("¡Error: Debes ingresar un número entero válido!")