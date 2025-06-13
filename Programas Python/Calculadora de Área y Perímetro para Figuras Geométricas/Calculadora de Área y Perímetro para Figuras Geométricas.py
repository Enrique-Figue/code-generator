import math

def es_triangulo_valido(a, b, c):
    return a + b > c and a + c > b and b + c > a and min(a, b, c) > 0

def calcular_circulo(radio):
    area = math.pi * radio ** 2
    perimetro = 2 * math.pi * radio
    return area, perimetro

def calcular_rectangulo(largo, ancho):
    area = largo * ancho
    perimetro = 2 * (largo + ancho)
    return area, perimetro

def calcular_triangulo(a, b, c):
    perimetro = a + b + c
    s = perimetro / 2
    area = math.sqrt(s * (s - a) * (s - b) * (s - c))
    return area, perimetro

while True:
    print("\n1. Círculo\n2. Rectángulo\n3. Triángulo\n4. Salir")
    opcion = input("Seleccione figura (1-4): ").strip()
    
    if opcion == "4":
        print("¡Hasta luego!")
        break
    
    try:
        if opcion == "1":
            radio = float(input("Radio del círculo: "))
            if radio <= 0: raise ValueError
            area, perimetro = calcular_circulo(radio)
        elif opcion == "2":
            largo = float(input("Largo: "))
            ancho = float(input("Ancho: "))
            if largo <=0 or ancho <=0: raise ValueError
            area, perimetro = calcular_rectangulo(largo, ancho)
        elif opcion == "3":
            a = float(input("Lado 1: "))
            b = float(input("Lado 2: "))
            c = float(input("Lado 3: "))
            if not es_triangulo_valido(a, b, c): raise ValueError
            area, perimetro = calcular_triangulo(a, b, c)
        else:
            print("Opción inválida")
            continue
        
        print(f"Área: {area:.2f}\nPerímetro: {perimetro:.2f}")
    
    except ValueError:
        print("Error: Ingrese valores numéricos válidos.")