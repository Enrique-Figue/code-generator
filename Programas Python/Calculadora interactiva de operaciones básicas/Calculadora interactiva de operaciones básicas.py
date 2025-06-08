while True:
    print("\nCalculadora Básica - Elige una operación:")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")
    
    opcion = input("\nIngresa tu opción (1-5): ")
    
    if opcion == '5':
        print("¡Hasta luego!")
        break
    
    if opcion not in ('1', '2', '3', '4'):
        print("Opción inválida. Intenta de nuevo.")
        continue
    
    try:
        num1 = float(input("Primer número: "))
        num2 = float(input("Segundo número: "))
    except ValueError:
        print("Error: Ingresa números válidos.")
        continue
    
    if opcion == '1':
        resultado = num1 + num2
        print(f"Resultado: {num1} + {num2} = {resultado}")
    elif opcion == '2':
        resultado = num1 - num2
        print(f"Resultado: {num1} - {num2} = {resultado}")
    elif opcion == '3':
        resultado = num1 * num2
        print(f"Resultado: {num1} * {num2} = {resultado}")
    elif opcion == '4':
        if num2 == 0:
            print("Error: No se puede dividir entre cero.")
        else:
            resultado = num1 / num2
            print(f"Resultado: {num1} / {num2} = {resultado}")
    
    continuar = input("\n¿Realizar otra operación? (s/n): ").lower()
    if continuar != 's':
        print("¡Hasta luego!")
        break