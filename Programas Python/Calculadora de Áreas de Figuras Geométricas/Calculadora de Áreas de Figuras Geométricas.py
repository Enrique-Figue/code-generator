import math

print("Calculadora interactiva de áreas")
print("Elige una figura:")
print("1. Círculo")
print("2. Triángulo")
print("3. Rectángulo")

opcion = input("Ingresa tu opción (1-3): ")

if opcion == "1":
    radio = float(input("Radio del círculo: "))
    area = math.pi * radio ** 2
    print(f"Área calculada: π×r² = {area:.2f}")
elif opcion == "2":
    base = float(input("Base del triángulo: "))
    altura = float(input("Altura del triángulo: "))
    area = (base * altura) / 2
    print(f"Área calculada: (b×h)/2 = {area:.2f}")
elif opcion == "3":
    largo = float(input("Largo del rectángulo: "))
    ancho = float(input("Ancho del rectángulo: "))
    area = largo * ancho
    print(f"Área calculada: l×a = {area:.2f}")
else:
    print("¡Opción no válida!")