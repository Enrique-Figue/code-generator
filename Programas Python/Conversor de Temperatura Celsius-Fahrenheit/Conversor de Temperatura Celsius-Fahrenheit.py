print("¡Bienvenido al conversor de temperatura!")

opcion = input("Seleccione el tipo de conversión:\n1. Celsius a Fahrenheit\n2. Fahrenheit a Celsius\n> ")

if opcion == "1":
    try:
        celsius = float(input("Ingrese la temperatura en Celsius: "))
        fahrenheit = (celsius * 9/5) + 32
        print(f"{celsius}°C equivale a {fahrenheit:.2f}°F")
    except ValueError:
        print("Error: Ingrese un valor numérico válido")
elif opcion == "2":
    try:
        fahrenheit = float(input("Ingrese la temperatura en Fahrenheit: "))
        celsius = (fahrenheit - 32) * 5/9
        print(f"{fahrenheit}°F equivale a {celsius:.2f}°C")
    except ValueError:
        print("Error: Ingrese un valor numérico válido")
else:
    print("Opción no válida. Por favor seleccione 1 o 2")