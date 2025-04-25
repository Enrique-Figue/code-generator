while True:
    try:
        opcion = int(input("Conversor de Temperatura\n1. Celsius a Fahrenheit\n2. Fahrenheit a Celsius\nSeleccione (1/2): "))
        if opcion not in [1, 2]:
            raise ValueError
        break
    except ValueError:
        print("¡Opción inválida! Ingrese 1 o 2.\n")

while True:
    try:
        temp = float(input("Ingrese la temperatura a convertir: "))
        break
    except ValueError:
        print("¡Valor inválido! Ingrese un número.\n")

if opcion == 1:
    resultado = (temp * 9/5) + 32
    print(f"\n{temp}°C equivale a {resultado:.2f}°F")
else:
    resultado = (temp - 32) * 5/9
    print(f"\n{temp}°F equivale a {resultado:.2f}°C")