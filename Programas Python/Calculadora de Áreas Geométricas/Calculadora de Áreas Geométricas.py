import math

def obtener_numero(mensaje):
    while True:
        try:
            return float(input(mensaje))
        except ValueError:
            print("Error: Ingrese un número válido.")

print("Calculadora de Áreas\n1. Círculo\n2. Triángulo\n3. Rectángulo")
opcion = input("Seleccione una figura (1-3): ")

if opcion == '1':
    radio = obtener_numero("Radio del círculo: ")
    area = math.pi * radio ** 2
    print(f"Área = π × {radio}² ≈ {area:.2f}")
elif opcion == '2':
    base = obtener_numero("Base del triángulo: ")
    altura = obtener_numero("Altura del triángulo: ")
    area = 0.5 * base * altura
    print(f"Área = ½ × {base} × {altura} = {area:.2f}")
elif opcion == '3':
    longitud = obtener_numero("Longitud del rectángulo: ")
    ancho = obtener_numero("Ancho del rectángulo: ")
    area = longitud * ancho
    print(f"Área = {longitud} × {ancho} = {area:.2f}")
else:
    print("Opción no válida. Por favor seleccione 1, 2 o 3.")