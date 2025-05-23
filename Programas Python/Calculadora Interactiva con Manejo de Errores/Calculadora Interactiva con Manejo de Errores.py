while True:
    print("\nCalculadora Básica")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")
    
    try:
        opcion = int(input("Seleccione una operación (1-5): "))
    except ValueError:
        print("Error: Ingrese un número válido.")
        continue
    
    if opcion == 5:
        print("¡Hasta luego!")
        break
    
    if opcion not in (1, 2, 3, 4):
        print("Opción no válida. Intente de nuevo.")
        continue
    
    try:
        num1 = float(input("Ingrese el primer número: "))
        num2 = float(input("Ingrese el segundo número: "))
    except ValueError:
        print("Error: Ingrese valores numéricos válidos.")
        continue
    
    if opcion == 1:
        resultado = num1 + num2
        print(f"Resultado: {num1} + {num2} = {resultado}")
    elif opcion == 2:
        resultado = num1 - num2
        print(f"Resultado: {num1} - {num2} = {resultado}")
    elif opcion == 3:
        resultado = num1 * num2
        print(f"Resultado: {num1} * {num2} = {resultado}")
    elif opcion == 4:
        if num2 == 0:
            print("Error: No se puede dividir entre cero.")
        else:
            resultado = num1 / num2
            print(f"Resultado: {num1} / {num2} = {resultado}")