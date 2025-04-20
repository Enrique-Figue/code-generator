def mostrar_menu():
    print("\n1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Salir")
    return input("Seleccione una opción (1-3): ")

def convertir_temperatura(opcion):
    try:
        if opcion == "1":
            celsius = float(input("Ingrese grados Celsius: "))
            fahrenheit = (celsius * 9/5) + 32
            return f"{celsius}°C = {fahrenheit:.2f}°F"
        elif opcion == "2":
            fahrenheit = float(input("Ingrese grados Fahrenheit: "))
            celsius = (fahrenheit - 32) * 5/9
            return f"{fahrenheit}°F = {celsius:.2f}°C"
    except ValueError:
        return "Error: Ingrese un valor numérico válido"

def main():
    while True:
        eleccion = mostrar_menu()
        if eleccion == "3":
            print("¡Hasta luego!")
            break
        if eleccion in ("1", "2"):
            resultado = convertir_temperatura(eleccion)
            print(resultado)
        else:
            print("Opción inválida. Intente nuevamente.")

if __name__ == "__main__":
    main()