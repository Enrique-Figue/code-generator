import math

def calcular_rectangulo():
    try:
        largo = float(input("Ingrese el largo del rectángulo: "))
        ancho = float(input("Ingrese el ancho del rectángulo: "))
        area = largo * ancho
        perimetro = 2 * (largo + ancho)
        print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
    except ValueError:
        print("Error: Ingrese valores numéricos válidos")

def calcular_circulo():
    try:
        radio = float(input("Ingrese el radio del círculo: "))
        area = math.pi * radio ** 2
        circunferencia = 2 * math.pi * radio
        print(f"Área: {area:.2f}, Circunferencia: {circunferencia:.2f}")
    except ValueError:
        print("Error: Ingrese un valor numérico válido")

def calcular_triangulo():
    try:
        a = float(input("Ingrese lado 1 del triángulo: "))
        b = float(input("Ingrese lado 2 del triángulo: "))
        c = float(input("Ingrese lado 3 del triángulo: "))
        if a + b > c and a + c > b and b + c > a:
            perimetro = a + b + c
            s = perimetro / 2
            area = math.sqrt(s * (s - a) * (s - b) * (s - c))
            print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
        else:
            print("Error: Los lados no forman un triángulo válido")
    except ValueError:
        print("Error: Ingrese valores numéricos válidos")

def main():
    while True:
        print("\n1. Rectángulo")
        print("2. Círculo")
        print("3. Triángulo")
        print("4. Salir")
        opcion = input("Seleccione una figura (1-4): ")
        
        if opcion == '1':
            calcular_rectangulo()
        elif opcion == '2':
            calcular_circulo()
        elif opcion == '3':
            calcular_triangulo()
        elif opcion == '4':
            print("¡Hasta luego!")
            break
        else:
            print("Opción no válida. Intente nuevamente.")

if __name__ == "__main__":
    main()