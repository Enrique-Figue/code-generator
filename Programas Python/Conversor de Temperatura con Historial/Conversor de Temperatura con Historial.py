def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    historial = []
    while True:
        print("\n1. Convertir Celsius a Fahrenheit")
        print("2. Convertir Fahrenheit a Celsius")
        print("3. Ver historial")
        print("4. Salir")
        try:
            opcion = int(input("Seleccione una opción: "))
        except ValueError:
            print("¡Error! Ingrese un número válido.")
            continue
            
        if opcion == 1:
            try:
                temp = float(input("Ingrese temperatura en Celsius: "))
                resultado = celsius_a_fahrenheit(temp)
                print(f"{temp}°C = {resultado:.2f}°F")
                historial.append(f"{temp}°C → {resultado:.2f}°F")
            except ValueError:
                print("¡Error! Ingrese un valor numérico.")
                
        elif opcion == 2:
            try:
                temp = float(input("Ingrese temperatura en Fahrenheit: "))
                resultado = fahrenheit_a_celsius(temp)
                print(f"{temp}°F = {resultado:.2f}°C")
                historial.append(f"{temp}°F → {resultado:.2f}°C")
            except ValueError:
                print("¡Error! Ingrese un valor numérico.")
                
        elif opcion == 3:
            print("\nHistorial de conversiones:")
            for conversion in historial:
                print(f"- {conversion}")
                
        elif opcion == 4:
            print("¡Hasta luego!")
            break
            
        else:
            print("Opción no válida. Intente de nuevo.")

if __name__ == "__main__":
    main()