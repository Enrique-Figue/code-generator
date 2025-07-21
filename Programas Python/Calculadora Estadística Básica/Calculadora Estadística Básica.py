def calcular_estadisticas(numeros):
    """Calcula y muestra estadísticas básicas de una lista de números"""
    if not numeros:
        print("No se ingresaron números válidos")
        return
    
    suma = sum(numeros)
    promedio = suma / len(numeros)
    minimo = min(numeros)
    maximo = max(numeros)
    
    print("\nResumen estadístico:")
    print(f"- Cantidad de números: {len(numeros)}")
    print(f"- Suma total: {suma}")
    print(f"- Promedio: {promedio:.2f}")
    print(f"- Valor mínimo: {minimo}")
    print(f"- Valor máximo: {maximo}")

def main():
    """Función principal del programa"""
    print("Calculadora Estadística Básica")
    print("Ingrese números uno por uno (deje vacío para finalizar)")
    
    numeros = []
    while True:
        entrada = input("→ ")
        if entrada == "":
            break
        try:
            numero = float(entrada)
            numeros.append(numero)
        except ValueError:
            print("Error: Ingrese un número válido")
    
    calcular_estadisticas(numeros)
    print("\n¡Gracias por usar la calculadora!")

if __name__ == "__main__":
    main()