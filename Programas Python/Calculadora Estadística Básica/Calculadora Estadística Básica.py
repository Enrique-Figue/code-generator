import statistics

try:
    datos = input("Ingrese números separados por comas: ")
    lista = [float(x) for x in datos.split(',')]
    
    media = statistics.mean(lista)
    mediana = statistics.median(lista)
    moda = statistics.mode(lista)
    desviacion = statistics.stdev(lista)
    
    print(f"\nResultados:")
    print(f"Media: {media:.2f}")
    print(f"Mediana: {mediana:.2f}")
    print(f"Moda: {moda:.2f}")
    print(f"Desviación estándar: {desviacion:.2f}")

except ValueError:
    print("Error: Ingrese números válidos separados por comas (ej. 5,2.7,8)")