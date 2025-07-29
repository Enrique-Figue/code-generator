import math

def calcular_area_perimetro():
    print("Calculadora de Áreas y Perímetros")
    print("1. Círculo\n2. Triángulo\n3. Rectángulo\n4. Salir")
    
    while True:
        try:
            opcion = int(input("\nElige una figura (1-4): "))
            if opcion == 4:
                print("¡Hasta luego!")
                break
            
            if opcion not in (1,2,3):
                print("Error: Opción no válida")
                continue
                
            if opcion == 1:
                radio = float(input("Radio del círculo: "))
                print(f"Área: {math.pi * radio**2:.2f}")
                print(f"Circunferencia: {2 * math.pi * radio:.2f}")
                
            elif opcion == 2:
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                lado = float(input("Lado del triángulo: "))
                print(f"Área: {(base * altura)/2:.2f}")
                print(f"Perímetro: {base + 2 * lado:.2f}")
                
            else:
                largo = float(input("Largo del rectángulo: "))
                ancho = float(input("Ancho del rectángulo: "))
                print(f"Área: {largo * ancho:.2f}")
                print(f"Perímetro: {2 * (largo + ancho):.2f}")
                
        except ValueError:
            print("Error: Ingrese valores numéricos válidos")

if __name__ == "__main__":
    calcular_area_perimetro()