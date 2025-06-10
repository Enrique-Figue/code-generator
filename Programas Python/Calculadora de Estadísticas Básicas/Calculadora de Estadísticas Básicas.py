def main():
    # Solicitar al usuario una lista de números separados por espacios
    entrada = input("Ingresa números separados por espacios: ").strip()
    
    try:
        # Convertir la entrada a una lista de floats
        numeros = [float(num) for num in entrada.split()]
        if not numeros:
            raise ValueError("Lista vacía")
    except ValueError:
        print("Error: Ingresa solo números válidos separados por espacios")
        return

    # Calcular estadísticas
    promedio = sum(numeros) / len(numeros)
    maximo = max(numeros)
    minimo = min(numeros)
    suma = sum(numeros)
    
    # Calcular desviación estándar muestral
    varianza = sum((x - promedio)**2 for x in numeros) / (len(numeros) - 1)
    desviacion = varianza ** 0.5

    # Mostrar resultados con formato
    print("\nEstadísticas:")
    print(f"Cantidad de números: {len(numeros)}")
    print(f"Suma total: {suma:.2f}")
    print(f"Promedio: {promedio:.2f}")
    print(f"Máximo: {maximo:.2f}")
    print(f"Mínimo: {minimo:.2f}")
    print(f"Desviación estándar: {desviacion:.2f}")

if __name__ == "__main__":
    main()