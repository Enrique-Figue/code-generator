def calcular_estadisticas():
    # Solicitar lista de números al usuario
    while True:
        entrada = input("Ingrese números separados por comas: ")
        numeros = entrada.replace(' ', '').split(',')
        
        try:
            lista_numeros = [float(num) for num in numeros]
            break
        except ValueError:
            print("Error: Asegúrese de ingresar solo números separados por comas. Intente de nuevo.")
    
    # Calcular estadísticas
    total = len(lista_numeros)
    suma = sum(lista_numeros)
    promedio = suma / total if total > 0 else 0
    maximo = max(lista_numeros) if lista_numeros else None
    minimo = min(lista_numeros) if lista_numeros else None
    
    # Mostrar resultados
    print("\nEstadísticas:")
    print(f"Cantidad de números: {total}")
    print(f"Suma total: {suma}")
    print(f"Promedio: {promedio:.2f}")
    print(f"Máximo: {maximo}")
    print(f"Mínimo: {minimo}")

if __name__ == "__main__":
    calcular_estadisticas()