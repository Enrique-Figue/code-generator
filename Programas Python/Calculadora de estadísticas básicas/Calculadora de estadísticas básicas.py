def calcular_estadisticas():
    numeros = []
    print("Ingresa números para calcular estadísticas (presiona Enter para terminar):")
    
    while True:
        entrada = input("Número: ")
        if entrada == "":
            if len(numeros) == 0:
                print("Error: No se ingresaron números")
                return
            break
        try:
            numeros.append(float(entrada))
        except ValueError:
            print("¡Entrada inválida! Ingresa solo números o Enter para terminar")

    promedio = sum(numeros) / len(numeros)
    maximo = max(numeros)
    minimo = min(numeros)

    print(f"\nResultados:\n- Promedio: {promedio:.2f}\n- Máximo: {maximo}\n- Mínimo: {minimo}")

if __name__ == "__main__":
    calcular_estadisticas()