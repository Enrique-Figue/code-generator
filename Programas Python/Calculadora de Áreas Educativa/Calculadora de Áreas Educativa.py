def calcular_area_circulo(radio):
    return 3.1416 * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de Áreas Educativa")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Salir")
    
    while True:
        try:
            opcion = int(input("Seleccione figura (1-4): "))
            if opcion == 4:
                print("¡Hasta luego!")
                break
                
            if opcion not in (1, 2, 3):
                print("Opción inválida. Intente nuevamente.")
                continue
                
            if opcion == 1:
                radio = float(input("Radio del círculo: "))
                area = calcular_area_circulo(radio)
                print(f"Área: π × {radio}² ≈ {area:.2f}\n")
            elif opcion == 2:
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                area = calcular_area_triangulo(base, altura)
                print(f"Área: ({base} × {altura}) / 2 = {area}\n")
            elif opcion == 3:
                lado = float(input("Lado del cuadrado: "))
                area = calcular_area_cuadrado(lado)
                print(f"Área: {lado}² = {area}\n")
                
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.\n")

if __name__ == "__main__":
    main()