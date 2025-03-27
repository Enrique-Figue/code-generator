import math

def calcular_area_circulo(radio):
    """Calcula el área de un círculo dado su radio."""
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    """Calcula el área de un triángulo dada base y altura."""
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    """Calcula el área de un cuadrado dado su lado."""
    return lado ** 2

def calcular_area_rectangulo(largo, ancho):
    """Calcula el área de un rectángulo dado largo y ancho."""
    return largo * ancho

def main():
    while True:
        print("\nCalculadora de Áreas")
        print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Rectángulo\n5. Salir")
        
        try:
            opcion = int(input("Seleccione una figura (1-5): "))
            if opcion == 5:
                print("¡Hasta luego!")
                break
                
            if opcion < 1 or opcion > 4:
                print("Opción no válida. Intente nuevamente.")
                continue
                
            if opcion == 1:
                radio = float(input("Ingrese el radio del círculo: "))
                if radio <= 0:
                    raise ValueError
                area = calcular_area_circulo(radio)
            elif opcion == 2:
                base = float(input("Ingrese la base del triángulo: "))
                altura = float(input("Ingrese la altura del triángulo: "))
                if base <= 0 or altura <= 0:
                    raise ValueError
                area = calcular_area_triangulo(base, altura)
            elif opcion == 3:
                lado = float(input("Ingrese el lado del cuadrado: "))
                if lado <= 0:
                    raise ValueError
                area = calcular_area_cuadrado(lado)
            elif opcion == 4:
                largo = float(input("Ingrese el largo del rectángulo: "))
                ancho = float(input("Ingrese el ancho del rectángulo: "))
                if largo <= 0 or ancho <= 0:
                    raise ValueError
                area = calcular_area_rectangulo(largo, ancho)
                
            print(f"El área calculada es: {area:.2f}")
            
        except ValueError:
            print("Error: Ingrese valores numéricos positivos válidos.")
        except Exception as e:
            print(f"Error inesperado: {str(e)}")

if __name__ == "__main__":
    main()