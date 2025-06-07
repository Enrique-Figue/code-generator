def mostrar_menu():
    print("\n1. Celsius a Fahrenheit")
    print("2. Millas a Kilómetros")
    print("3. Libras a Kilogramos")
    print("4. Salir")

def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def millas_a_kilometros(m):
    return m * 1.60934

def libras_a_kilogramos(l):
    return l * 0.453592

def main():
    while True:
        mostrar_menu()
        try:
            opcion = int(input("Seleccione una conversión (1-4): "))
            if opcion == 4:
                print("¡Hasta luego!")
                break
            elif 1 <= opcion <= 3:
                valor = float(input("Ingrese el valor a convertir: "))
                if opcion == 1:
                    resultado = celsius_a_fahrenheit(valor)
                    print(f"{valor}°C = {resultado:.2f}°F")
                elif opcion == 2:
                    resultado = millas_a_kilometros(valor)
                    print(f"{valor} millas = {resultado:.2f} km")
                elif opcion == 3:
                    resultado = libras_a_kilogramos(valor)
                    print(f"{valor} libras = {resultado:.2f} kg")
            else:
                print("Opción no válida. Intente nuevamente.")
        except ValueError:
            print("Entrada inválida. Ingrese un número.")

if __name__ == "__main__":
    main()