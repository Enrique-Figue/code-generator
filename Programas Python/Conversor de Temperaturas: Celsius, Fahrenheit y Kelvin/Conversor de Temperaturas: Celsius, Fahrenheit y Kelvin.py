while True:
    print("\nOpciones de conversión:")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    print("3. Celsius a Kelvin")
    print("4. Kelvin a Celsius")
    print("5. Fahrenheit a Kelvin")
    print("6. Kelvin a Fahrenheit")
    print("7. Salir")
    
    opcion = input("Seleccione una opción (1-7): ")
    
    if opcion == '7':
        print("¡Hasta luego!")
        break
    
    if opcion not in {'1', '2', '3', '4', '5', '6'}:
        print("Opción inválida. Intente de nuevo.")
        continue
    
    try:
        temp = float(input("Ingrese la temperatura: "))
    except ValueError:
        print("Error: Ingrese un valor numérico válido.")
        continue
    
    if opcion == '1':
        resultado = (temp * 9/5) + 32
        print(f"{temp}°C = {resultado:.2f}°F")
    elif opcion == '2':
        resultado = (temp - 32) * 5/9
        print(f"{temp}°F = {resultado:.2f}°C")
    elif opcion == '3':
        resultado = temp + 273.15
        print(f"{temp}°C = {resultado:.2f}K")
    elif opcion == '4':
        resultado = temp - 273.15
        print(f"{temp}K = {resultado:.2f}°C")
    elif opcion == '5':
        celsius = (temp - 32) * 5/9
        resultado = celsius + 273.15
        print(f"{temp}°F = {resultado:.2f}K")
    elif opcion == '6':
        celsius = temp - 273.15
        resultado = (celsius * 9/5) + 32
        print(f"{temp}K = {resultado:.2f}°F")