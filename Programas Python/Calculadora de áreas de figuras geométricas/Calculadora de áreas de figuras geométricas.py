import math

def area_circulo(radio):
    return math.pi * radio ** 2

def area_triangulo(base, altura):
    return (base * altura) / 2

def area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de áreas - Elige una figura:")
    print("1. Círculo")
    print("2. Triángulo")
    print("3. Cuadrado")
    
    while True:
        try:
            opcion = int(input("\nIngresa el número de tu elección (1-3): "))
            if opcion not in [1, 2, 3]:
                raise ValueError
                
            if opcion == 1:
                radio = float(input("Radio del círculo: "))
                if radio <= 0:
                    raise ValueError
                resultado = area_circulo(radio)
                print(f"Área del círculo: {resultado:.2f} (π×r²)")
                
            elif opcion == 2:
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                if base <= 0 or altura <= 0:
                    raise ValueError
                resultado = area_triangulo(base, altura)
                print(f"Área del triángulo: {resultado:.2f} (b×h/2)")
                
            else:
                lado = float(input("Lado del cuadrado: "))
                if lado <= 0:
                    raise ValueError
                resultado = area_cuadrado(lado)
                print(f"Área del cuadrado: {resultado:.2f} (l²)")
            
            break
            
        except ValueError:
            print("Error: Ingresa valores numéricos válidos y positivos")

if __name__ == "__main__":
    main()