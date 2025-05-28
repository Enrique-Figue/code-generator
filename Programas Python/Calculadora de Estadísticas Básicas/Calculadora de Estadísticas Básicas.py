def calcular_media(datos):
    return sum(datos) / len(datos)

def calcular_mediana(datos):
    datos_ordenados = sorted(datos)
    n = len(datos_ordenados)
    if n % 2 == 1:
        return datos_ordenados[n // 2]
    else:
        return (datos_ordenados[(n // 2) - 1] + datos_ordenados[n // 2]) / 2

def calcular_moda(datos):
    frecuencias = {}
    for num in datos:
        frecuencias[num] = frecuencias.get(num, 0) + 1
    max_frec = max(frecuencias.values(), default=0)
    if max_frec == 1:
        return None
    modas = [num for num, frec in frecuencias.items() if frec == max_frec]
    modas.sort()
    return modas if len(modas) > 1 else modas[0]

def calcular_rango(datos):
    return max(datos) - min(datos)

if __name__ == "__main__":
    entrada = input("Ingrese números separados por comas: ")
    numeros = [float(num.strip()) for num in entrada.split(',')]
    
    media = calcular_media(numeros)
    mediana = calcular_mediana(numeros)
    moda = calcular_moda(numeros)
    rango = calcular_rango(numeros)
    
    print(f"\nResultados:")
    print(f"Media: {media:.2f}")
    print(f"Mediana: {mediana:.2f}")
    print(f"Moda: {moda}" if moda is not None else "Moda: No hay moda")
    print(f"Rango: {rango:.2f}")