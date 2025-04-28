numeros = []

while True:
    entrada = input("Ingresa un número o 'salir' para terminar: ")
    if entrada.lower() == 'salir':
        break
    try:
        numero = float(entrada)
        numeros.append(numero)
    except ValueError:
        print("Entrada inválida. Por favor ingresa un número.")

if numeros:
    promedio = sum(numeros) / len(numeros)
    print(f"\nNúmeros ingresados: {numeros}")
    print(f"Promedio: {promedio:.2f}")
else:
    print("\nNo se ingresaron números.")