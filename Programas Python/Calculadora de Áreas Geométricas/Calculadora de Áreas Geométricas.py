import math

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_rectangulo(largo, ancho):
    return largo * ancho

def main():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo")
    
    while True:
        opcion = input("\nElija figura (1-3) o 'q' para salir: ").strip().lower()
        if opcion == 'q':
            print("¡Hasta luego!")
            break
        
        try:
            opcion = int(opcion)
        except ValueError:
            print("❌ Entrada inválida")
            continue
        
        if opcion == 1:
            radio = float(input("Radio del círculo: "))
            print(f"Área: {calcular_area_circulo(radio):.2f}")
        elif opcion == 2:
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            print(f"Área: {calcular_area_triangulo(base, altura):.2f}")
        elif opcion == 3:
            largo = float(input("Largo del rectángulo: "))
            ancho = float(input("Ancho del rectángulo: "))
            print(f"Área: {calcular_area_rectangulo(largo, ancho):.2f}")
        else:
            print("⚠️ Opción no válida")
            continue
        
        otro = input("¿Calcular otra área? (s/n): ").lower()
        if otro != 's':
            print("¡Hasta luego!")
            break

if __name__ == "__main__":
    main()