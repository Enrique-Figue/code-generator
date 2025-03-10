def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

while True:
    print("\nOpciones:")
    print("1. Convertir de Celsius a Fahrenheit")
    print("2. Convertir de Fahrenheit a Celsius")
    print("3. Salir")
    
    opcion = input("Seleccione una opción (1/2/3): ")
    
    if opcion == '3':
        print("¡Adiós!")
        break
    
    if opcion not in ('1', '2'):
        print("Opción inválida. Intente de nuevo.")
        continue
    
    try:
        temp = float(input("Ingrese la temperatura: "))
    except ValueError:
        print("Error: Ingrese un número válido.")
        continue
    
    if opcion == '1':
        resultado = celsius_a_fahrenheit(temp)
        print(f"{temp}°C equivale a {resultado:.2f}°F")
        print("Fórmula utilizada: (°C × 9/5) + 32 = °F")
    else:
        resultado = fahrenheit_a_celsius(temp)
        print(f"{temp}°F equivale a {resultado:.2f}°C")
        print("Fórmula utilizada: (°F - 32) × 5/9 = °C")