def convertir_temperatura():
    try:
        celsius = float(input("Ingresa temperatura en Celsius: "))
        fahrenheit = (celsius * 9/5) + 32
        print(f"\n{celsius}°C = {fahrenheit:.1f}°F")
        print("\nFórmula usada: (°C × 9/5) + 32 = °F")
    except ValueError:
        print("Error: Ingresa un valor numérico válido")

if __name__ == "__main__":
    print("=== Conversor Científico Celsius a Fahrenheit ===")
    convertir_temperatura()