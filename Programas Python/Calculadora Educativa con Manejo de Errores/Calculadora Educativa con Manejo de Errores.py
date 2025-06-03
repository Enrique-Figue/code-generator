while True:
    print("\nCalculadora Educativa - Operaciones disponibles:")
    print("1. Sumar")
    print("2. Restar")
    print("3. Multiplicar")
    print("4. Dividir")
    print("5. Salir")

    opcion = input("Seleccione una opción (1-5): ")

    if opcion == '5':
        print("¡Hasta luego!")
        break

    if opcion not in ['1', '2', '3', '4']:
        print("Opción no válida. Intente de nuevo.")
        continue

    try:
        num1 = float(input("Ingrese el primer número: "))
        num2 = float(input("Ingrese el segundo número: "))
    except ValueError:
        print("Error: Por favor ingrese números válidos.")
        continue

    if opcion == '1':
        resultado = num1 + num2
        print(f"{num1} + {num2} = {resultado}")
    elif opcion == '2':
        resultado = num1 - num2
        print(f"{num1} - {num2} = {resultado}")
    elif opcion == '3':
        resultado = num1 * num2
        print(f"{num1} * {num2} = {resultado}")
    elif opcion == '4':
        if num2 == 0:
            print("Error: No se puede dividir por cero.")
        else:
            resultado = num1 / num2
            print(f"{num1} / {num2} = {resultado}")