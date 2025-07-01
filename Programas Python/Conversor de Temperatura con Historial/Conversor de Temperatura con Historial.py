def convertir_celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def convertir_fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

historial = []

while True:
    print("\n1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Ver historial")
    print("4. Salir")
    
    opcion = input("Seleccione una opción: ")
    
    if opcion == "1":
        try:
            temp = float(input("Ingrese grados Celsius: "))
            resultado = convertir_celsius_a_fahrenheit(temp)
            print(f"{temp}°C = {resultado:.2f}°F")
            historial.append(f"{temp}°C → {resultado:.2f}°F")
        except ValueError:
            print("Error: Ingrese un número válido")
    
    elif opcion == "2":
        try:
            temp = float(input("Ingrese grados Fahrenheit: "))
            resultado = convertir_fahrenheit_a_celsius(temp)
            print(f"{temp}°F = {resultado:.2f}°C")
            historial.append(f"{temp}°F → {resultado:.2f}°C")
        except ValueError:
            print("Error: Ingrese un número válido")
    
    elif opcion == "3":
        print("\nHistorial de conversiones:")
        for registro in historial:
            print(f"- {registro}")
    
    elif opcion == "4":
        print("¡Hasta luego!")
        break
    
    else:
        print("Opción no válida")