def calcular_factorial(n):
    """Calcula el factorial de un número entero no negativo."""
    if n == 0:
        return 1
    factorial = 1
    for i in range(1, n + 1):
        factorial *= i
    return factorial

def main():
    """Función principal que maneja la entrada del usuario."""
    print("Calculadora de Factorial")
    print("------------------------")
    
    while True:
        try:
            numero = int(input("Ingrese un número entero no negativo: "))
            if numero < 0:
                print("Error: El número debe ser mayor o igual a cero.")
                continue
            break
        except ValueError:
            print("Error: Debe ingresar un número entero válido.")
    
    resultado = calcular_factorial(numero)
    print(f"\nEl factorial de {numero} es: {resultado}")

if __name__ == "__main__":
    main()