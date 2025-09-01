while True:
    print("\nMenú de Operaciones:")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Salir")
    
    opcion = input("Seleccione una operación (1-5): ")
    
    if opcion == "5":
        print("¡Hasta luego!")
        break
    
    if opcion not in ("1", "2", "3", "4"):
        print("Opción no válida. Intente nuevamente.")
        continue
    
    try:
        num1 = float(input("Ingrese el primer número: "))
        num2 = float(input("Ingrese el segundo número: "))
    except ValueError:
        print("Error: Ingrese valores numéricos válidos.")
        continue
    
    if opcion == "1":
        resultado = num1 + num2
        explicacion = f"{num1} + {num2} = {resultado}"
    elif opcion == "2":
        resultado = num1 - num2
        explicacion = f"{num1} - {num2} = {resultado}"
    elif opcion == "3":
        resultado = num1 * num2
        explicacion = f"{num1} × {num2} = {resultado}"
    elif opcion == "4":
        if num2 == 0:
            print("Error: No se puede dividir por cero.")
            continue
        resultado = num1 / num2
        explicacion = f"{num1} ÷ {num2} = {resultado}"
    
    print(f"\nResultado: {resultado}")
    print(f"Explicación: {explicacion}")