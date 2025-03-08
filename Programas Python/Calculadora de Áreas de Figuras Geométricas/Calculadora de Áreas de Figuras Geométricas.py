import math

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def calcular_area_rectangulo(largo, ancho):
    return largo * ancho

def mostrar_menu():
    print("\nCalculadora de Áreas")
    print("1. Triángulo")
    print("2. Círculo")
    print("3. Cuadrado")
    print("4. Rectángulo")
    print("5. Salir")

def main():
    while True:
        mostrar_menu()
        try:
            opcion = int(input("Seleccione una figura (1-5): "))
            if opcion == 5:
                print("¡Hasta luego!")
                break
            
            if opcion < 1 or opcion > 4:
                print("Error: Opción no válida")
                continue

            if opcion == 1:
                base = float(input("Ingrese la base del triángulo: "))
                altura = float(input("Ingrese la altura del triángulo: "))
                area = calcular_area_triangulo(base, altura)
                print(f"Área del triángulo: {area:.2f}")
            
            elif opcion == 2:
                radio = float(input("Ingrese el radio del círculo: "))
                area = calcular_area_circulo(radio)
                print(f"Área del círculo: {area:.2f}")
            
            elif opcion == 3:
                lado = float(input("Ingrese el lado del cuadrado: "))
                area = calcular_area_cuadrado(lado)
                print(f"Área del cuadrado: {area:.2f}")
            
            elif opcion == 4:
                largo = float(input("Ingrese el largo del rectángulo: "))
                ancho = float(input("Ingrese el ancho del rectángulo: "))
                area = calcular_area_rectangulo(largo, ancho)
                print(f"Área del rectángulo: {area:.2f}")

        except ValueError:
            print("Error: Ingrese valores numéricos válidos")
        except KeyboardInterrupt:
            print("\nOperación cancelada")
            break

if __name__ == "__main__":
    main()