def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

while True:
    print("\nOpciones:")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Salir")
    opcion = input("Seleccione una opción (1/2/3): ")
    
    if opcion == '3':
        print("¡Adiós!")
        break
    elif opcion in ('1', '2'):
        try:
            valor = float(input("Ingrese la temperatura: "))
            if opcion == '1':
                resultado = celsius_a_fahrenheit(valor)
                print(f"{valor}°C = {resultado:.2f}°F")
            else:
                resultado = fahrenheit_a_celsius(valor)
                print(f"{valor}°F = {resultado:.2f}°C")
        except ValueError:
            print("Error: Ingrese un número válido.")
    else:
        print("Opción inválida. Intente de nuevo.")