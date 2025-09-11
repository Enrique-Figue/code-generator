import statistics

def main():
    numeros = []
    print("Ingresa números para calcular estadísticas. Escribe 'fin' para terminar.")
    
    while True:
        entrada = input("Número: ")
        if entrada.lower() == 'fin':
            break
        try:
            numeros.append(float(entrada))
        except ValueError:
            print("¡Entrada inválida! Intenta nuevamente.")
    
    if not numeros:
        print("No se ingresaron números válidos.")
        return
    
    print("\nOpciones:")
    print("1. Media   2. Mediana   3. Moda   4. Rango   5. Desviación Estándar")
    opcion = input("Selecciona una operación (1-5): ")
    
    try:
        if opcion == '1':
            print(f"Media: {statistics.mean(numeros):.2f}")
        elif opcion == '2':
            print(f"Mediana: {statistics.median(numeros):.2f}")
        elif opcion == '3':
            print(f"Moda: {statistics.multimode(numeros)}")
        elif opcion == '4':
            print(f"Rango: {max(numeros) - min(numeros):.2f}")
        elif opcion == '5':
            print(f"Desviación Estándar: {statistics.stdev(numeros):.2f}")
        else:
            print("Opción no válida.")
    except statistics.StatisticsError as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()