def calcular_estadisticas():
    numeros = []
    print("Ingresa números para calcular estadísticas (deja vacío y presiona Enter para finalizar):")
    
    while True:
        entrada = input("> ")
        if entrada == "":
            break
        try:
            numeros.append(float(entrada))
        except ValueError:
            print("¡Error! Ingresa solo números o deja vacío para terminar")
    
    if not numeros:
        print("No se ingresaron números válidos")
        return
    
    promedio = sum(numeros) / len(numeros)
    print(f"\nResultados:")
    print(f"Cantidad de números: {len(numeros)}")
    print(f"Promedio: {promedio:.2f}")
    print(f"Máximo: {max(numeros)}")
    print(f"Mínimo: {min(numeros)}")

if __name__ == "__main__":
    calcular_estadisticas()