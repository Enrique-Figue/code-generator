import statistics

def calcular_estadisticas():
    numeros = []
    print("Ingresa números uno por uno. Escribe 'fin' para terminar.")
    
    while True:
        entrada = input("Número: ")
        if entrada.lower() == 'fin':
            break
        try:
            numero = float(entrada)
            numeros.append(numero)
        except ValueError:
            print("Error: Ingresa un número válido o 'fin' para terminar.")
    
    if not numeros:
        print("No se ingresaron números válidos.")
        return
    
    print("\nResultados:")
    print(f"Cantidad de números: {len(numeros)}")
    print(f"Media: {sum(numeros)/len(numeros):.2f}")
    print(f"Mediana: {statistics.median(numeros):.2f}")
    try:
        moda = statistics.mode(numeros)
        print(f"Moda: {moda:.2f}")
    except statistics.StatisticsError:
        print("Moda: No hay valor único")
    print(f"Rango: {max(numeros) - min(numeros):.2f}")

if __name__ == "__main__":
    calcular_estadisticas()