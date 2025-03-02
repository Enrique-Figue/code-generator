def main():
    while True:
        try:
            entrada = input("Ingresa números separados por comas: ")
            numeros = [float(num) for num in entrada.split(',')]
            if not numeros:
                raise ValueError("Debes ingresar al menos un número")
            break
        except ValueError as e:
            print(f"Error: {e}. Intenta nuevamente.")
    
    promedio = sum(numeros) / len(numeros)
    maximo = max(numeros)
    minimo = min(numeros)
    suma = sum(numeros)
    cantidad = len(numeros)
    
    print("\nResultados:")
    print(f"- Cantidad de números: {cantidad}")
    print(f"- Suma total: {suma:.2f}")
    print(f"- Promedio: {promedio:.2f}")
    print(f"- Máximo: {maximo:.2f}")
    print(f"- Mínimo: {minimo:.2f}")

if __name__ == "__main__":
    main()