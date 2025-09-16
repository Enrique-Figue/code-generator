while True:
    print("\nCalculadora Educativa")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")
    
    opcion = input("Elige una operación (1-5): ")
    
    if opcion == '5':
        print("¡Hasta luego!")
        break
    if opcion not in {'1', '2', '3', '4'}:
        print("Opción inválida. Intenta nuevamente.")
        continue
    
    try:
        num1 = float(input("Ingresa el primer número: "))
        num2 = float(input("Ingresa el segundo número: "))
    except ValueError:
        print("Error: Ingresa valores numéricos válidos.")
        continue
    
    if opcion == '1':
        resultado = num1 + num2
        print(f"{num1} + {num2} = {resultado}")
    elif opcion == '2':
        resultado = num1 - num2
        print(f"{num1} - {num2} = {resultado}")
    elif opcion == '3':
        resultado = num1 * num2
        print(f"{num1} × {num2} = {resultado}")
    elif opcion == '4':
        if num2 == 0:
            print("Error: No se puede dividir entre cero.")
        else:
            resultado = num1 / num2
            print(f"{num1} ÷ {num2} = {resultado}")
    
    print("-" * 30)