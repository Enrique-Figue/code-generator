def calcular_mcd(a, b):
    """Calcula el MCD de dos números usando el algoritmo de Euclides."""
    while b != 0:
        a, b = b, a % b
    return a

def obtener_entero_positivo(mensaje):
    """Solicita un entero positivo al usuario hasta que ingrese un valor válido."""
    while True:
        try:
            numero = int(input(mensaje))
            if numero > 0:
                return numero
            print("¡El número debe ser positivo!")
        except ValueError:
            print("¡Entrada inválida. Debe ser un número entero!")

if __name__ == "__main__":
    print("Calculadora de MCD (Máximo Común Divisor)")
    print("-----------------------------------------")
    num1 = obtener_entero_positivo("Ingrese el primer número positivo: ")
    num2 = obtener_entero_positivo("Ingrese el segundo número positivo: ")
    
    resultado = calcular_mcd(num1, num2)
    print(f"\nEl MCD de {num1} y {num2} es: {resultado}")