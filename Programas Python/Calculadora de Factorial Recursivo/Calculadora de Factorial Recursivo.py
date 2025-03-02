def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n - 1)

def main():
    try:
        numero = int(input("Ingrese un número entero no negativo: "))
        if numero < 0:
            print("Error: El número debe ser no negativo.")
        else:
            resultado = factorial(numero)
            print(f"El factorial de {numero} es {resultado}")
    except ValueError:
        print("Error: Por favor ingrese un número entero válido.")

if __name__ == "__main__":
    main()