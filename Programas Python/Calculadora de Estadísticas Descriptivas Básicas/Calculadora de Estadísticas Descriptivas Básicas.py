def calcular_estadisticas(datos):
    """
    Calcula medidas estadísticas básicas de una lista de números.
    Devuelve: media, mediana, moda, rango, varianza, desviación estándar
    """
    if not datos:
        raise ValueError("La lista de datos está vacía")
    
    n = len(datos)
    datos_sorted = sorted(datos)
    media = sum(datos) / n
    
    # Mediana
    medio = n // 2
    mediana = (datos_sorted[medio] if n % 2 != 0 
               else (datos_sorted[medio-1] + datos_sorted[medio])/2)
    
    # Moda
    frecuencias = {}
    for num in datos:
        frecuencias[num] = frecuencias.get(num, 0) + 1
    max_frec = max(frecuencias.values())
    moda = [k for k, v in frecuencias.items() if v == max_frec]
    
    # Rango
    rango = datos_sorted[-1] - datos_sorted[0]
    
    # Varianza y desviación estándar
    varianza = sum((x - media)**2 for x in datos) / (n - 1)
    desviacion = varianza ** 0.5
    
    return {
        'media': media,
        'mediana': mediana,
        'moda': moda,
        'rango': rango,
        'varianza': varianza,
        'desviacion_estandar': desviacion
    }

if __name__ == "__main__":
    try:
        entrada = input("Ingrese números separados por comas: ")
        datos = [float(x.strip()) for x in entrada.split(',')]
        resultados = calcular_estadisticas(datos)
        
        print("\nResultados Estadísticos:")
        for k, v in resultados.items():
            if isinstance(v, list):
                print(f"{k.capitalize()}: {', '.join(map(str, v))}")
            else:
                print(f"{k.capitalize()}: {v:.2f}")
                
    except ValueError as e:
        print(f"Error: {e}. Asegúrese de ingresar números válidos.")