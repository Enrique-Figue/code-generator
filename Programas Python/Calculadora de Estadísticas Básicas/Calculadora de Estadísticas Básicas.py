def calcular_media(numeros):
    return sum(numeros) / len(numeros) if numeros else 0

def calcular_mediana(numeros):
    ordenados = sorted(numeros)
    n = len(ordenados)
    mitad = n // 2
    if n % 2 == 1:
        return ordenados[mitad]
    return (ordenados[mitad - 1] + ordenados[mitad]) / 2

def calcular_moda(numeros):
    frecuencias = {}
    for num in numeros:
        frecuencias[num] = frecuencias.get(num, 0) + 1
    max_frec = max(frecuencias.values(), default=0)
    modas = [num for num, freq in frecuencias.items() if freq == max_frec]
    return modas[0] if len(modas) == 1 else modas

if __name__ == "__main__":
    muestra = [3, 1, 4, 1, 5, 9, 2, 6]
    print("Muestra:", muestra)
    print(f"Media: {calcular_media(muestra):.2f}")
    print(f"Mediana: {calcular_mediana(muestra)}")
    print(f"Moda: {calcular_moda(muestra)}")