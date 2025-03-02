import math

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de Áreas Geométricas")
    while True:
        print("\nOpciones:")
        print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Salir")
        opcion = input("Seleccione una figura (1-4): ")
        
        if opcion == "4":
            print("¡Hasta luego!")
            break
        
        try:
            if opcion == "1":
                radio = float(input("Radio del círculo: "))
                if radio <= 0:
                    print("Error: el radio debe ser positivo.")
                    continue
                area = calcular_area_circulo(radio)
                print(f"Área = π * {radio:.2f}² = {area:.2f}")
            
            elif opcion == "2":
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                if base <= 0 or altura <= 0:
                    print("Error: valores deben ser positivos.")
                    continue
                area = calcular_area_triangulo(base, altura)
                print(f"Área = ({base:.2f} * {altura:.2f}) / 2 = {area:.2f}")
            
            elif opcion == "3":
                lado = float(input("Lado del cuadrado: "))
                if lado <= 0:
                    print("Error: el lado debe ser positivo.")
                    continue
                area = calcular_area_cuadrado(lado)
                print(f"Área = {lado:.2f}² = {area:.2f}")
            
            else:
                print("Opción no válida. Intente nuevamente.")
        
        except ValueError:
            print("Error: ingrese un valor numérico válido.")

if __name__ == "__main__":
    main()