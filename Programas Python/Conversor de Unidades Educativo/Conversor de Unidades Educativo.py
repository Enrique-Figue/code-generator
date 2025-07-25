def main():
    print("¡Bienvenido al Conversor de Unidades!")
    print("Opción 1: Kilómetros a Millas")
    print("Opción 2: Celsius a Fahrenheit")
    print("Opción 3: Kilogramos a Libras")
    print("Opción 4: Salir\n")

    while True:
        try:
            opcion = int(input("Seleccione una opción (1-4): "))
            if opcion == 1:
                km = float(input("Ingrese kilómetros: "))
                print(f"{km} km = {km * 0.621371:.2f} millas\n")
            elif opcion == 2:
                celsius = float(input("Ingrese temperatura en °C: "))
                print(f"{celsius}°C = {(celsius * 9/5) + 32:.2f}°F\n")
            elif opcion == 3:
                kg = float(input("Ingrese kilogramos: "))
                print(f"{kg} kg = {kg * 2.20462:.2f} libras\n")
            elif opcion == 4:
                print("¡Hasta luego!")
                break
            else:
                print("⚠️ Opción inválida. Intente nuevamente.\n")
        except ValueError:
            print("⚠️ Error: Ingrese valores numéricos válidos.\n")

if __name__ == "__main__":
    main()