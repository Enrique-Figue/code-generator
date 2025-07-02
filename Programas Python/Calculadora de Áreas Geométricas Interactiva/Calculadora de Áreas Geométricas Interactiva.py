import math

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def main():
    print("Calculadora de Áreas Geométricas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Salir")
    
    while True:
        opcion = input("\nSeleccione una figura (1-4): ").strip()
        
        if opcion == "4":
            print("¡Hasta luego!")
            break
            
        try:
            if opcion == "1":
                radio = float(input("Radio del círculo: "))
                print(f"Área: {calcular_area_circulo(radio):.2f}")
            elif opcion == "2":
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                print(f"Área: {calcular_area_triangulo(base, altura):.2f}")
            elif opcion == "3":
                lado = float(input("Lado del cuadrado: "))
                print(f"Área: {calcular_area_cuadrado(lado):.2f}")
            else:
                print("Opción inválida. Intente nuevamente.")
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")
            
        continuar = input("\n¿Calcular otra área? (s/n): ").strip().lower()
        if continuar != "s":
            print("¡Hasta luego!")
            break

if __name__ == "__main__":
    main()