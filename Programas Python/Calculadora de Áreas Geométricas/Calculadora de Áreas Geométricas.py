def calcular_area_circulo(radio):
    """Calcula el área de un círculo dado su radio."""
    return 3.1416 * radio ** 2

def calcular_area_triangulo(base, altura):
    """Calcula el área de un triángulo dado base y altura."""
    return (base * altura) / 2

def calcular_area_rectangulo(largo, ancho):
    """Calcula el área de un rectángulo dado largo y ancho."""
    return largo * ancho

def main():
    print("Calculadora de Áreas Geométricas")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo\n4. Salir")
    
    while True:
        try:
            opcion = int(input("\nSeleccione una figura (1-4): "))
            if opcion == 1:
                radio = float(input("Radio del círculo: "))
                print(f"Área: {calcular_area_circulo(radio):.2f}")
            elif opcion == 2:
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                print(f"Área: {calcular_area_triangulo(base, altura):.2f}")
            elif opcion == 3:
                largo = float(input("Largo del rectángulo: "))
                ancho = float(input("Ancho del rectángulo: "))
                print(f"Área: {calcular_area_rectangulo(largo, ancho):.2f}")
            elif opcion == 4:
                print("¡Hasta luego!")
                break
            else:
                print("Opción inválida. Intente nuevamente.")
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    main()