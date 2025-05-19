print("1. Círculo\n2. Rectángulo\n3. Triángulo")
opcion = input("Seleccione una figura (1-3): ")

if opcion == "1":
    radio = float(input("Radio del círculo: "))
    area = 3.1416 * radio ** 2
elif opcion == "2":
    largo = float(input("Largo del rectángulo: "))
    ancho = float(input("Ancho del rectángulo: "))
    area = largo * ancho
elif opcion == "3":
    base = float(input("Base del triángulo: "))
    altura = float(input("Altura del triángulo: "))
    area = 0.5 * base * altura
else:
    print("¡Opción inválida!")
    exit()

print(f"\nEl área calculada es: {area:.2f}")