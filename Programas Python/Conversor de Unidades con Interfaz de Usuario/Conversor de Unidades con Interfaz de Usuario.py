def main():
    print("Conversor de Unidades - Elige una opción:")
    print("1. Temperatura (Celsius a Fahrenheit)")
    print("2. Longitud (Millas a Kilómetros)")
    print("3. Peso (Libras a Kilogramos)")
    print("4. Salir")
    
    while True:
        try:
            opcion = int(input("\nIngresa el número de tu elección: "))
            
            if opcion == 1:
                celsius = float(input("Grados Celsius: "))
                fahrenheit = (celsius * 9/5) + 32
                print(f"→ {celsius}°C = {fahrenheit:.2f}°F\n")
            elif opcion == 2:
                millas = float(input("Millas: "))
                kilometros = millas * 1.60934
                print(f"→ {millas} mi = {kilometros:.2f} km\n")
            elif opcion == 3:
                libras = float(input("Libras: "))
                kilogramos = libras * 0.453592
                print(f"→ {libras} lb = {kilogramos:.2f} kg\n")
            elif opcion == 4:
                print("¡Hasta luego!")
                break
            else:
                print("❌ Error: Ingresa un número entre 1 y 4")
                
        except ValueError:
            print("❌ Error: Ingresa un valor numérico válido")

if __name__ == "__main__":
    main()