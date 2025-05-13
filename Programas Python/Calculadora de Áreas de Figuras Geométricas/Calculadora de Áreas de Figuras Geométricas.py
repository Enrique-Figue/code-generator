def calcular_area():
    print("Calculadora de Áreas")
    print("1. Círculo")
    print("2. Triángulo")
    print("3. Cuadrado")
    print("4. Rectángulo")
    
    while True:
        try:
            opcion = int(input("\nSeleccione figura (1-4): "))
            if 1 <= opcion <= 4:
                break
            print("Error: Ingrese un número entre 1 y 4")
        except ValueError:
            print("Error: Ingrese un número válido")
    
    if opcion == 1:
        radio = float(input("Radio del círculo: "))
        print(f"Área: {3.1416 * radio**2:.2f}")
    elif opcion == 2:
        base = float(input("Base del triángulo: "))
        altura = float(input("Altura del triángulo: "))
        print(f"Área: {(base * altura)/2:.2f}")
    elif opcion == 3:
        lado = float(input("Lado del cuadrado: "))
        print(f"Área: {lado**2:.2f}")
    elif opcion == 4:
        largo = float(input("Largo del rectángulo: "))
        ancho = float(input("Ancho del rectángulo: "))
        print(f"Área: {largo * ancho:.2f}")

if __name__ == "__main__":
    calcular_area()