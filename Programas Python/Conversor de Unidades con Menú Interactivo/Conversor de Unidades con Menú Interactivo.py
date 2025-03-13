def mostrar_menu():
    print("\nConversor de Unidades")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Kilómetros a Millas")
    print("4. Millas a Kilómetros")
    print("5. Salir")

def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def kilometros_a_millas(kilometros):
    return kilometros * 0.621371

def millas_a_kilometros(millas):
    return millas / 0.621371

def main():
    while True:
        mostrar_menu()
        try:
            opcion = int(input("\nSeleccione una opción (1-5): "))
            if opcion == 5:
                print("¡Hasta luego!")
                break
            
            valor = float(input("Ingrese el valor a convertir: "))
            
            if opcion == 1:
                resultado = celsius_a_fahrenheit(valor)
                print(f"{valor}°C = {resultado:.2f}°F")
            elif opcion == 2:
                resultado = fahrenheit_a_celsius(valor)
                print(f"{valor}°F = {resultado:.2f}°C")
            elif opcion == 3:
                resultado = kilometros_a_millas(valor)
                print(f"{valor} km = {resultado:.2f} millas")
            elif opcion == 4:
                resultado = millas_a_kilometros(valor)
                print(f"{valor} millas = {resultado:.2f} km")
            else:
                print("Opción no válida. Intente de nuevo.")
                
        except ValueError:
            print("Error: Ingrese un número válido.")

if __name__ == "__main__":
    main()