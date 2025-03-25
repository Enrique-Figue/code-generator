def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    while True:
        print("\nMenu:")
        print("1. Convertir Celsius a Fahrenheit")
        print("2. Convertir Fahrenheit a Celsius")
        print("3. Salir")
        
        opcion = input("Seleccione una opción (1-3): ")
        
        if opcion == "1":
            try:
                temp = float(input("Ingrese temperatura en Celsius: "))
                print(f"{temp}°C = {celsius_a_fahrenheit(temp):.2f}°F")
            except ValueError:
                print("Error: Ingrese un valor numérico válido")
        
        elif opcion == "2":
            try:
                temp = float(input("Ingrese temperatura en Fahrenheit: "))
                print(f"{temp}°F = {fahrenheit_a_celsius(temp):.2f}°C")
            except ValueError:
                print("Error: Ingrese un valor numérico válido")
        
        elif opcion == "3":
            print("¡Hasta luego!")
            break
        
        else:
            print("Opción no válida. Intente nuevamente")

if __name__ == "__main__":
    main()