def es_primo(numero):
    """Determina si un número es primo utilizando división trial."""
    if numero < 2:
        return False
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            return False
    return True

def generar_primos(limite):
    """Genera todos los números primos hasta un límite especificado."""
    return [num for num in range(2, limite+1) if es_primo(num)]

def main():
    """Función principal con interfaz interactiva para el usuario."""
    try:
        n = int(input("Ingrese un número entero mayor a 1: "))
        if n < 2:
            raise ValueError
        
        if es_primo(n):
            print(f"¡{n} es un número primo!")
        else:
            print(f"{n} no es un número primo.")
        
        primos = generar_primos(n)
        print(f"Números primos hasta {n}:")
        print(primos)
        
    except ValueError:
        print("Error: Por favor ingrese un número entero válido mayor a 1.")

if __name__ == "__main__":
    main()