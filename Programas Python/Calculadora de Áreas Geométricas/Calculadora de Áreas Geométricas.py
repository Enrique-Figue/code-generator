import math

def obtener_numero_positivo(mensaje):
    while True:
        try:
            numero = float(input(mensaje))
            if numero <= 0:
                print("Error: El número debe ser positivo.")
            else:
                return numero
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

print("Bienvenido a la Calculadora de Áreas")
while True:
    print("\nOpciones disponibles:")
    print("1. Calcular área de un círculo")
    print("2. Calcular área de un triángulo")
    print("3. Calcular área de un rectángulo")
    print("4. Salir")
    opcion = input("Seleccione una opción (1-4): ")

    if opcion == '1':
        radio = obtener_numero_positivo("Ingrese el radio del círculo: ")
        area = math.pi * radio ** 2
        print(f"Área del círculo: {area:.2f}")
    elif opcion == '2':
        base = obtener_numero_positivo("Ingrese la base del triángulo: ")
        altura = obtener_numero_positivo("Ingrese la altura del triángulo: ")
        area = (base * altura) / 2
        print(f"Área del triángulo: {area:.2f}")
    elif opcion == '3':
        largo = obtener_numero_positivo("Ingrese el largo del rectángulo: ")
        ancho = obtener_numero_positivo("Ingrese el ancho del rectángulo: ")
        area = largo * ancho
        print(f"Área del rectángulo: {area:.2f}")
    elif opcion == '4':
        print("¡Hasta luego!")
        break
    else:
        print("Error: Opción no válida. Intente nuevamente.")