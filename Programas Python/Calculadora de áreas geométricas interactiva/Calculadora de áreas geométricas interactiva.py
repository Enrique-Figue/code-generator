import math

def calcular_area_circulo():
    try:
        radio = float(input("Ingrese el radio del círculo: "))
        area = math.pi * radio ** 2
        print(f"Área del círculo: {area:.2f}\n")
    except ValueError:
        print("Error: Ingrese un valor numérico válido\n")

def calcular_area_rectangulo():
    try:
        base = float(input("Ingrese la base del rectángulo: "))
        altura = float(input("Ingrese la altura del rectángulo: "))
        print(f"Área del rectángulo: {base * altura}\n")
    except ValueError:
        print("Error: Ingrese valores numéricos válidos\n")

def calcular_area_triangulo():
    try:
        base = float(input("Ingrese la base del triángulo: "))
        altura = float(input("Ingrese la altura del triángulo: "))
        print(f"Área del triángulo: {(base * altura) / 2}\n")
    except ValueError:
        print("Error: Ingrese valores numéricos válidos\n")

def main():
    while True:
        print("Calculadora de áreas geométricas")
        print("1. Círculo")
        print("2. Rectángulo")
        print("3. Triángulo")
        print("4. Salir")
        
        opcion = input("Seleccione una opción (1-4): ")
        
        if opcion == "1":
            calcular_area_circulo()
        elif opcion == "2":
            calcular_area_rectangulo()
        elif opcion == "3":
            calcular_area_triangulo()
        elif opcion == "4":
            print("¡Hasta luego!")
            break
        else:
            print("Opción no válida. Intente nuevamente\n")

if __name__ == "__main__":
    main()