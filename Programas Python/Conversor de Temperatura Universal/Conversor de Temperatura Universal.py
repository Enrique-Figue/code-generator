def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

def celsius_a_kelvin(c):
    return c + 273.15

def kelvin_a_celsius(k):
    return k - 273.15

def fahrenheit_a_kelvin(f):
    return celsius_a_kelvin(fahrenheit_a_celsius(f))

def kelvin_a_fahrenheit(k):
    return celsius_a_fahrenheit(kelvin_a_celsius(k))

def mostrar_menu():
    print("\nOpciones de conversión:")
    print("1. Celsius a Fahrenheit")
    print("2. Celsius a Kelvin")
    print("3. Fahrenheit a Celsius")
    print("4. Fahrenheit a Kelvin")
    print("5. Kelvin a Celsius")
    print("6. Kelvin a Fahrenheit")
    print("7. Salir")

def main():
    while True:
        mostrar_menu()
        opcion = input("Seleccione una opción (1-7): ").strip()
        if opcion == '7':
            print("¡Hasta luego!")
            break
        try:
            opcion = int(opcion)
            if not 1 <= opcion <= 6:
                raise ValueError
            valor = float(input("Ingrese el valor a convertir: "))
            if opcion == 1:
                resultado = celsius_a_fahrenheit(valor)
                print(f"{valor}°C = {resultado:.2f}°F")
            elif opcion == 2:
                resultado = celsius_a_kelvin(valor)
                print(f"{valor}°C = {resultado:.2f}K")
            elif opcion == 3:
                resultado = fahrenheit_a_celsius(valor)
                print(f"{valor}°F = {resultado:.2f}°C")
            elif opcion == 4:
                resultado = fahrenheit_a_kelvin(valor)
                print(f"{valor}°F = {resultado:.2f}K")
            elif opcion == 5:
                resultado = kelvin_a_celsius(valor)
                print(f"{valor}K = {resultado:.2f}°C")
            elif opcion == 6:
                resultado = kelvin_a_fahrenheit(valor)
                print(f"{valor}K = {resultado:.2f}°F")
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")
        except:
            print("Error: Opción no válida.")

if __name__ == "__main__":
    main()