import math

print("Bienvenido a la calculadora geométrica")
while True:
    print("\nOpciones:")
    print("1. Círculo")
    print("2. Rectángulo")
    print("3. Triángulo")
    print("4. Salir")
    opcion = input("Selecciona una figura (1-4): ")

    if opcion == '4':
        print("¡Hasta luego!")
        break

    if opcion == '1':
        try:
            radio = float(input("Radio del círculo: "))
            area = math.pi * radio ** 2
            perimetro = 2 * math.pi * radio
            print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
        except ValueError:
            print("Error: Ingresa un valor numérico válido.")

    elif opcion == '2':
        try:
            base = float(input("Base del rectángulo: "))
            altura = float(input("Altura del rectángulo: "))
            area = base * altura
            perimetro = 2 * (base + altura)
            print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
        except ValueError:
            print("Error: Ingresa valores numéricos válidos.")

    elif opcion == '3':
        try:
            a = float(input("Lado 1 del triángulo: "))
            b = float(input("Lado 2 del triángulo: "))
            c = float(input("Lado 3 del triángulo: "))
            if a + b > c and a + c > b and b + c > a:
                perimetro = a + b + c
                s = perimetro / 2
                area = math.sqrt(s * (s - a) * (s - b) * (s - c))
                print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
            else:
                print("Error: Los lados no forman un triángulo válido.")
        except ValueError:
            print("Error: Ingresa valores numéricos válidos.")

    else:
        print("Opción no válida. Intenta de nuevo.")