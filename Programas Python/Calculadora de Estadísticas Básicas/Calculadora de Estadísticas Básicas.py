def calcular_estadisticas():
    numeros = []
    print("Ingresa números para calcular estadísticas. Escribe 'fin' para terminar.")

    while True:
        entrada = input("Número: ")
        if entrada.lower() == 'fin':
            break
        try:
            numeros.append(float(entrada))
        except ValueError:
            print("¡Entrada no válida! Intenta nuevamente.")

    if not numeros:
        print("No se ingresaron números válidos.")
        return

    n = len(numeros)
    suma = sum(numeros)
    promedio = suma / n
    maximo = max(numeros)
    minimo = min(numeros)
    
    # Cálculo de desviación estándar
    diferencias_cuadradas = [(x - promedio)**2 for x in numeros]
    varianza = sum(diferencias_cuadradas) / n
    desviacion_estandar = varianza ** 0.5

    print("\nResultados:")
    print(f"Total de números: {n}")
    print(f"Promedio: {round(promedio, 2)}")
    print(f"Máximo: {round(maximo, 2)}")
    print(f"Mínimo: {round(minimo, 2)}")
    print(f"Desviación estándar: {round(desviacion_estandar, 2)}")

if __name__ == "__main__":
    calcular_estadisticas()