def convertir_temperatura():
    print("\nConversor de Celsius a Fahrenheit")
    celsius = float(input("Ingrese temperatura en °C: "))
    fahrenheit = (celsius * 9/5) + 32
    print(f"{celsius}°C = {fahrenheit:.1f}°F\n")

def convertir_longitud():
    print("\nConversor de Kilómetros a Millas")
    km = float(input("Ingrese distancia en kilómetros: "))
    millas = km * 0.621371
    print(f"{km} km = {millas:.2f} millas\n")

def convertir_peso():
    print("\nConversor de Kilogramos a Libras")
    kg = float(input("Ingrese peso en kilogramos: "))
    libras = kg * 2.20462
    print(f"{kg} kg = {libras:.1f} libras\n")

def main():
    while True:
        print("1. Convertir temperatura")
        print("2. Convertir longitud")
        print("3. Convertir peso")
        print("4. Salir")
        
        opcion = input("\nSeleccione una opción (1-4): ")
        
        try:
            if opcion == '1':
                convertir_temperatura()
            elif opcion == '2':
                convertir_longitud()
            elif opcion == '3':
                convertir_peso()
            elif opcion == '4':
                print("¡Hasta luego!")
                break
            else:
                print("Opción inválida. Intente nuevamente.\n")
        except ValueError:
            print("Error: Ingrese valores numéricos válidos\n")

if __name__ == "__main__":
    main()