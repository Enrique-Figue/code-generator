def calcular_area():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo")
    
    try:
        opcion = int(input("Elige una figura (1-3): "))
        
        if opcion == 1:
            radio = float(input("Radio del círculo: "))
            area = 3.1416 * radio ** 2
            print(f"Área del círculo: {area:.2f}")
            
        elif opcion == 2:
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            area = 0.5 * base * altura
            print(f"Área del triángulo: {area:.2f}")
            
        elif opcion == 3:
            largo = float(input("Largo del rectángulo: "))
            ancho = float(input("Ancho del rectángulo: "))
            area = largo * ancho
            print(f"Área del rectángulo: {area:.2f}")
            
        else:
            print("¡Opción inválida! Elige del 1 al 3.")
            
    except ValueError:
        print("Error: Ingresa valores numéricos válidos.")

if __name__ == "__main__":
    calcular_area()