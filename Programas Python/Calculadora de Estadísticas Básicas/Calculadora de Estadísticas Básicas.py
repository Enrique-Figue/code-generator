def calcular_estadisticas(numeros):
    n = len(numeros)
    promedio = sum(numeros) / n
    maximo = max(numeros)
    minimo = min(numeros)
    varianza = sum((x - promedio) ** 2 for x in numeros) / (n - 1) if n > 1 else 0
    desviacion = varianza ** 0.5
    return promedio, maximo, minimo, desviacion

def main():
    print("Calculadora de estadísticas básicas")
    print("Ingrese números separados por espacios (ej: 5 7 8 10):")
    
    while True:
        entrada = input(">> ").strip()
        if not entrada:
            print("Entrada vacía. Intente nuevamente.")
            continue
            
        try:
            numeros = list(map(float, entrada.split()))
            if not numeros:
                raise ValueError
            break
        except ValueError:
            print("Error: Solo ingrese números. Intente nuevamente.")
    
    if numeros:
        promedio, maximo, minimo, desviacion = calcular_estadisticas(numeros)
        print(f"\nResultados para {len(numeros)} números:")
        print(f"• Promedio: {promedio:.2f}")
        print(f"• Máximo: {maximo}")
        print(f"• Mínimo: {minimo}")
        print(f"• Desviación estándar: {desviacion:.2f}" if len(numeros) > 1 else "• Desviación estándar: Se requieren 2+ valores")

if __name__ == "__main__":
    main()