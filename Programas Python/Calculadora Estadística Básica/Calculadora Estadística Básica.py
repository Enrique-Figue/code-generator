import statistics

def main():
    print("Ingrese números separados por espacios:")
    numeros = [float(x) for x in input().split()]
    
    media = statistics.mean(numeros)
    mediana = statistics.median(numeros)
    try:
        moda = statistics.multimode(numeros)
    except statistics.StatisticsError:
        moda = ["Sin moda"]
    
    print("\nResultados:")
    print(f"- Media: {media:.2f}")
    print(f"- Mediana: {mediana:.2f}")
    print(f"- Moda: {', '.join(map(str, moda))}")
    print(f"- Rango: {max(numeros) - min(numeros):.2f}")
    print(f"- Desviación estándar: {statistics.stdev(numeros):.2f}")

if __name__ == "__main__":
    main()