import math

def main():
    try:
        entrada = input("Ingrese números separados por comas: ")
        numeros = [float(num) for num in entrada.split(',')]
        
        if not numeros:
            print("Lista vacía. Ingrese al menos un número.")
            return
        
        suma = sum(numeros)
        promedio = suma / len(numeros)
        maximo = max(numeros)
        minimo = min(numeros)
        varianza = sum((x - promedio) ** 2 for x in numeros) / (len(numeros) - 1)
        desviacion = math.sqrt(varianza)
        
        print(f"\nResultados:")
        print(f"- Cantidad de números: {len(numeros)}")
        print(f"- Suma total: {suma:.2f}")
        print(f"- Promedio: {promedio:.2f}")
        print(f"- Máximo: {maximo:.2f}")
        print(f"- Mínimo: {minimo:.2f}")
        print(f"- Desviación estándar (muestral): {desviacion:.2f}")
    
    except ValueError:
        print("Error: Asegúrese de ingresar solo números separados por comas.")

if __name__ == "__main__":
    main()