import math

def area_circulo(radio):
    return math.pi * (radio ** 2)

def area_triangulo(base, altura):
    return (base * altura) / 2

def area_cuadrado(lado):
    return lado ** 2

def obtener_numero(mensaje):
    while True:
        try:
            valor = float(input(mensaje))
            if valor <= 0:
                print("Error: Ingresa un número positivo.")
                continue
            return valor
        except ValueError:
            print("Error: Ingresa un número válido.")

def main():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado")
    
    opcion = input("Selecciona una figura (1-3): ")
    if opcion == "1":
        radio = obtener_numero("Radio del círculo: ")
        print(f"Área: {area_circulo(radio):.2f}")
    elif opcion == "2":
        base = obtener_numero("Base del triángulo: ")
        altura = obtener_numero("Altura del triángulo: ")
        print(f"Área: {area_triangulo(base, altura):.2f}")
    elif opcion == "3":
        lado = obtener_numero("Lado del cuadrado: ")
        print(f"Área: {area_cuadrado(lado):.2f}")
    else:
        print("Opción no válida. Intenta de nuevo.")

if __name__ == "__main__":
    main()