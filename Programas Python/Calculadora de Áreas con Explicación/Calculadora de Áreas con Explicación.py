import math

while True:
    print("\nCalculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Rectángulo\n5. Salir")
    opcion = input("Selecciona una figura (1-5): ")

    if opcion == "5":
        print("¡Hasta luego!")
        break

    try:
        if opcion == "1":
            radio = float(input("Radio del círculo: "))
            area = math.pi * radio ** 2
            print(f"Área: {area:.2f} (Fórmula: π × r² , r={radio})")
        
        elif opcion == "2":
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            area = (base * altura) / 2
            print(f"Área: {area:.2f} (Fórmula: (b × h)/2 , b={base}, h={altura})")
        
        elif opcion == "3":
            lado = float(input("Lado del cuadrado: "))
            area = lado ** 2
            print(f"Área: {area:.2f} (Fórmula: l² , l={lado})")
        
        elif opcion == "4":
            base = float(input("Base del rectángulo: "))
            altura = float(input("Altura del rectángulo: "))
            area = base * altura
            print(f"Área: {area:.2f} (Fórmula: b × h , b={base}, h={altura})")
        
        else:
            print("Opción no válida. Intenta nuevamente.")
            continue

    except ValueError:
        print("Error: Ingresa valores numéricos válidos.")
        continue

    continuar = input("¿Calcular otra área? (s/n): ").lower()
    if continuar != "s":
        print("¡Hasta luego!")
        break