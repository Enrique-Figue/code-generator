import math

def calcular_area_circulo():
    radio = float(input("Ingrese el radio del círculo: "))
    return math.pi * radio ** 2

def calcular_area_triangulo():
    base = float(input("Ingrese la base del triángulo: "))
    altura = float(input("Ingrese la altura del triángulo: "))
    return (base * altura) / 2

def calcular_area_rectangulo():
    largo = float(input("Ingrese el largo del rectángulo: "))
    ancho = float(input("Ingrese el ancho del rectángulo: "))
    return largo * ancho

def main():
    print("Calculadora de Áreas Geométricas")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo\n4. Salir")
    
    while True:
        try:
            opcion = int(input("\nSeleccione una figura (1-4): "))
            if opcion == 1:
                area = calcular_area_circulo()
                print(f"Área del círculo: {area:.2f}")
            elif opcion == 2:
                area = calcular_area_triangulo()
                print(f"Área del triángulo: {area:.2f}")
            elif opcion == 3:
                area = calcular_area_rectangulo()
                print(f"Área del rectángulo: {area:.2f}")
            elif opcion == 4:
                print("¡Hasta luego!")
                break
            else:
                print("Opción inválida. Intente nuevamente.")
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

if __name__ == "__main__":
    main()