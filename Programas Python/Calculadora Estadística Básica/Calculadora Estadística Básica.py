import statistics

try:
    entrada = input("Ingrese números separados por coma: ")
    numeros = [float(num) for num in entrada.split(',')]
    
    promedio = sum(numeros) / len(numeros)
    maximo = max(numeros)
    minimo = min(numeros)
    mediana = statistics.median(numeros)
    
    try:
        moda = statistics.mode(numeros)
        moda_msg = f"Moda: {moda}"
    except statistics.StatisticsError:
        moda_msg = "Moda: No hay moda única"
    
    print(f"\nResultados:")
    print(f"Promedio: {promedio:.2f}")
    print(f"Máximo: {maximo:.2f}")
    print(f"Mínimo: {minimo:.2f}")
    print(f"Mediana: {mediana:.2f}")
    print(moda_msg)

except ValueError:
    print("Error: Asegúrese de ingresar solo números separados por comas.")
except ZeroDivisionError:
    print("Error: No se ingresaron números válidos.")