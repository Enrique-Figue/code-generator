import math

def area_circulo(radio):
    """Calcula el área de un círculo dado su radio."""
    return math.pi * radio ** 2

def area_triangulo(base, altura):
    """Calcula el área de un triángulo dado base y altura."""
    return (base * altura) / 2

def area_rectangulo(largo, ancho):
    """Calcula el área de un rectángulo dado largo y ancho."""
    return largo * ancho

def area_cuadrado(lado):
    """Calcula el área de un cuadrado dado su lado."""
    return lado ** 2

def main():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo\n4. Cuadrado\n5. Salir")
    
    while True:
        try:
            opcion = int(input("\nSeleccione figura (1-5): "))
            if opcion == 5:
                print("¡Hasta luego!")
                break
            
            if opcion < 1 or opcion > 4:
                print("Opción inválida. Intente nuevamente.")
                continue
                
            if opcion == 1:
                radio = float(input("Radio del círculo: "))
                print(f"Área: {area_circulo(radio):.2f}")
            elif opcion == 2:
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                print(f"Área: {area_triangulo(base, altura):.2f}")
            elif opcion == 3:
                largo = float(input("Largo del rectángulo: "))
                ancho = float(input("Ancho del rectángulo: "))
                print(f"Área: {area_rectangulo(largo, ancho):.2f}")
            elif opcion == 4:
                lado = float(input("Lado del cuadrado: "))
                print(f"Área: {area_cuadrado(lado):.2f}")
                
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    main()