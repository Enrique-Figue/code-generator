import math

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de áreas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado")
    
    try:
        opcion = int(input("Seleccione una figura (1-3): "))
        
        if opcion == 1:
            radio = float(input("Radio del círculo: "))
            print(f"Área: {calcular_area_circulo(radio):.2f}")
        elif opcion == 2:
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            print(f"Área: {calcular_area_triangulo(base, altura):.2f}")
        elif opcion == 3:
            lado = float(input("Lado del cuadrado: "))
            print(f"Área: {calcular_area_cuadrado(lado):.2f}")
        else:
            print("Opción no válida")
            
    except ValueError:
        print("Error: Ingrese valores numéricos válidos")

if __name__ == "__main__":
    main()