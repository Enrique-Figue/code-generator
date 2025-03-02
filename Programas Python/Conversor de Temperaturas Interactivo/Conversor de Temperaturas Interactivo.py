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
        try:
            mostrar_menu()
            opcion = int(input("Seleccione una opción (1-7): "))
            if opcion == 7:
                print("¡Hasta luego!")
                break
            elif 1 <= opcion <= 6:
                temp = float(input("Ingrese la temperatura a convertir: "))
                funciones = {
                    1: (celsius_a_fahrenheit, "°F"),
                    2: (celsius_a_kelvin, "K"),
                    3: (fahrenheit_a_celsius, "°C"),
                    4: (fahrenheit_a_kelvin, "K"),
                    5: (kelvin_a_celsius, "°C"),
                    6: (kelvin_a_fahrenheit, "°F")
                }
                funcion, unidad = funciones[opcion]
                resultado = funcion(temp)
                print(f"Resultado: {resultado:.2f}{unidad}")
            else:
                print("Opción no válida. Intente de nuevo.")
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")
        except:
            print("Error inesperado. Intente de nuevo.")

if __name__ == "__main__":
    main()