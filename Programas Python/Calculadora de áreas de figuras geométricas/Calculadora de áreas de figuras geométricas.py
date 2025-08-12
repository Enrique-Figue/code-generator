def entrada_numerica(mensaje):
    while True:
        try:
            return float(input(mensaje))
        except ValueError:
            print("Error: Ingrese un número válido.")

print("Calculadora de Áreas")
print("1. Círculo\n2. Triángulo\n3. Rectángulo\n4. Salir")

while True:
    opcion = input("Elija una figura (1-4): ").strip()
    
    if opcion == "4":
        print("¡Hasta luego!")
        break
    
    elif opcion == "1":
        radio = entrada_numerica("Radio del círculo: ")
        print(f"Área: {3.1416 * radio ** 2:.2f}")
    
    elif opcion == "2":
        base = entrada_numerica("Base del triángulo: ")
        altura = entrada_numerica("Altura del triángulo: ")
        print(f"Área: {(base * altura) / 2:.2f}")
    
    elif opcion == "3":
        largo = entrada_numerica("Largo del rectángulo: ")
        ancho = entrada_numerica("Ancho del rectángulo: ")
        print(f"Área: {largo * ancho:.2f}")
    
    else:
        print("Opción inválida. Intente nuevamente.")
    
    print()