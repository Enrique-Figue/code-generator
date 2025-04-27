import math

def calcular_area_rectangulo(base, altura):
    return base * altura

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_circulo(radio):
    return math.pi * (radio ** 2)

def main():
    while True:
        print("\nCalculadora de Áreas")
        print("1. Rectángulo")
        print("2. Triángulo")
        print("3. Círculo")
        print("4. Salir")
        
        opcion = input("Seleccione una opción (1-4): ")
        
        if opcion == "4":
            print("¡Hasta luego!")
            break
        
        try:
            if opcion == "1":
                base = float(input("Ingrese la base: "))
                altura = float(input("Ingrese la altura: "))
                area = calcular_area_rectangulo(base, altura)
                print(f"Área del rectángulo: {area:.2f}")
            elif opcion == "2":
                base = float(input("Ingrese la base: "))
                altura = float(input("Ingrese la altura: "))
                area = calcular_area_triangulo(base, altura)
                print(f"Área del triángulo: {area:.2f}")
            elif opcion == "3":
                radio = float(input("Ingrese el radio: "))
                area = calcular_area_circulo(radio)
                print(f"Área del círculo: {area:.2f}")
            else:
                print("Opción no válida. Intente nuevamente.")
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    main()