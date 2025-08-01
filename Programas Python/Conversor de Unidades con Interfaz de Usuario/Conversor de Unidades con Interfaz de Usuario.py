def mostrar_menu():
    print("\nSelecciona una opción:")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Kilómetros a Millas")
    print("4. Millas a Kilómetros")
    print("0. Salir")

def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

def km_a_millas(km):
    return km * 0.621371

def millas_a_km(millas):
    return millas / 0.621371

while True:
    mostrar_menu()
    try:
        opcion = int(input("Opción: "))
        if opcion == 0:
            print("¡Hasta luego!")
            break
        
        valor = float(input("Ingresa el valor a convertir: "))
        
        if opcion == 1:
            print(f"{valor}°C = {celsius_a_fahrenheit(valor):.2f}°F")
        elif opcion == 2:
            print(f"{valor}°F = {fahrenheit_a_celsius(valor):.2f}°C")
        elif opcion == 3:
            print(f"{valor} km = {km_a_millas(valor):.2f} mi")
        elif opcion == 4:
            print(f"{valor} mi = {millas_a_km(valor):.2f} km")
        else:
            print("Opción inválida. Introduce un número del 0 al 4.")
    
    except ValueError:
        print("Error: Ingresa un valor numérico válido.")