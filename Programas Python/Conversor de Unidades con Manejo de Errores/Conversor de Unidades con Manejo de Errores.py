print("Bienvenido al Conversor de Unidades")

while True:
    print("\nOpciones:")
    print("1. Kilómetros a Millas")
    print("2. Celsius a Fahrenheit")
    print("3. Kilogramos a Libras")
    print("4. Salir")
    
    try:
        opcion = int(input("Seleccione una operación (1-4): "))
    except ValueError:
        print("Error: Ingrese un número válido\n")
        continue
    
    if opcion == 4:
        print("¡Hasta luego!")
        break
    
    if opcion not in [1, 2, 3]:
        print("Opción no válida\n")
        continue
    
    try:
        valor = float(input("Ingrese el valor a convertir: "))
    except ValueError:
        print("Error: Valor no numérico\n")
        continue
    
    if opcion == 1:
        print(f"{valor} km = {valor * 0.621371:.2f} millas")
    elif opcion == 2:
        print(f"{valor}°C = {(valor * 9/5) + 32:.2f}°F")
    elif opcion == 3:
        print(f"{valor} kg = {valor * 2.20462:.2f} lbs")