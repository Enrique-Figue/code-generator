def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    while True:
        print("\n1. Celsius a Fahrenheit")
        print("2. Fahrenheit a Celsius")
        print("3. Salir")
        opcion = input("Selecciona una opción (1-3): ")
        
        if opcion == "1":
            try:
                celsius = float(input("Ingresa la temperatura en Celsius: "))
                print(f"{celsius}°C = {celsius_a_fahrenheit(celsius):.2f}°F")
            except ValueError:
                print("Error: Ingresa un valor numérico válido")
                
        elif opcion == "2":
            try:
                fahrenheit = float(input("Ingresa la temperatura en Fahrenheit: "))
                print(f"{fahrenheit}°F = {fahrenheit_a_celsius(fahrenheit):.2f}°C")
            except ValueError:
                print("Error: Ingresa un valor numérico válido")
                
        elif opcion == "3":
            print("¡Hasta luego!")
            break
            
        else:
            print("Opción no válida. Intenta nuevamente.")

if __name__ == "__main__":
    main()