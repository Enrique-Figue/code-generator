def calcular_estadisticas():
    """Calcula estadísticas básicas de números almacenados en un archivo"""
    nombre_archivo = input("Ingrese el nombre del archivo con números: ")
    
    try:
        with open(nombre_archivo, 'r') as archivo:
            numeros = [float(linea.strip()) for linea in archivo if linea.strip()]
        
        if not numeros:
            print("El archivo está vacío")
            return
            
        total = sum(numeros)
        promedio = total / len(numeros)
        minimo = min(numeros)
        maximo = max(numeros)
        
        print(f"\nResultados para {len(numeros)} números:")
        print(f"Suma total: {total:.2f}")
        print(f"Promedio: {promedio:.2f}")
        print(f"Mínimo: {minimo:.2f}")
        print(f"Máximo: {maximo:.2f}")
        
    except FileNotFoundError:
        print("Error: Archivo no encontrado")
    except ValueError:
        print("Error: El archivo contiene datos no numéricos")

if __name__ == "__main__":
    calcular_estadisticas()