def calcular_factorial(n):
    """Calcula el factorial de un número usando recursión."""
    if n == 0:
        return 1
    else:
        return n * calcular_factorial(n - 1)

def main():
    """Interfaz principal para la calculadora de factorial."""
    try:
        numero = int(input("Ingrese un número entero no negativo: "))
        if numero < 0:
            print("Error: El número debe ser no negativo.")
        else:
            resultado = calcular_factorial(numero)
            print(f"El factorial de {numero} es: {resultado}")
    except ValueError:
        print("Error: Ingrese un valor entero válido.")

if __name__ == "__main__":
    main()