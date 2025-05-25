import math

def calcular_area_perimetro_circulo(radio):
    area = math.pi * radio ** 2
    perimetro = 2 * math.pi * radio
    return area, perimetro

def calcular_area_perimetro_cuadrado(lado):
    area = lado ** 2
    perimetro = 4 * lado
    return area, perimetro

def calcular_area_perimetro_rectangulo(base, altura):
    area = base * altura
    perimetro = 2 * (base + altura)
    return area, perimetro

def main():
    while True:
        print("\nCalculadora Geométrica")
        print("1. Círculo\n2. Cuadrado\n3. Rectángulo\n4. Salir")
        opcion = int(input("Seleccione una figura (1-4): "))
        
        if opcion == 1:
            radio = float(input("Radio del círculo: "))
            area, perimetro = calcular_area_perimetro_circulo(radio)
            print(f"Área: {area:.2f}, Circunferencia: {perimetro:.2f}")
        elif opcion == 2:
            lado = float(input("Lado del cuadrado: "))
            area, perimetro = calcular_area_perimetro_cuadrado(lado)
            print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
        elif opcion == 3:
            base = float(input("Base del rectángulo: "))
            altura = float(input("Altura del rectángulo: "))
            area, perimetro = calcular_area_perimetro_rectangulo(base, altura)
            print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
        elif opcion == 4:
            print("¡Hasta luego!")
            break
        else:
            print("Opción inválida. Intente de nuevo.")
        
        continuar = input("¿Realizar otro cálculo? (s/n): ").lower()
        if continuar != 's':
            print("Programa finalizado.")
            break

if __name__ == "__main__":
    main()