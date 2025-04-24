import math

def area_circulo(radio):
    return math.pi * radio ** 2

def area_triangulo(base, altura):
    return (base * altura) / 2

def area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado")
    
    while True:
        opcion = input("Seleccione figura (1-3): ")
        if opcion in {'1', '2', '3'}:
            break
        print("Entrada inválida. Intente nuevamente.")
    
    try:
        if opcion == '1':
            radio = float(input("Radio del círculo: "))
            resultado = area_circulo(radio)
        elif opcion == '2':
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            resultado = area_triangulo(base, altura)
        else:
            lado = float(input("Lado del cuadrado: "))
            resultado = area_cuadrado(lado)
        
        print(f"El área es: {resultado:.2f}")
    
    except ValueError:
        print("Error: Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    main()