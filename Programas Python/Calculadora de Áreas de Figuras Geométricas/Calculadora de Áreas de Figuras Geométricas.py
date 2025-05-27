import math

def calcular_area():
    print("Calculadora de Áreas")
    print("1. Círculo\n2. Triángulo\n3. Cuadrado\n4. Salir")
    
    while True:
        opcion = input("\nSeleccione figura (1-4): ")
        
        if opcion == "1":
            radio = float(input("Radio del círculo: "))
            print(f"Área: {math.pi * radio ** 2:.2f}")
        elif opcion == "2":
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            print(f"Área: {(base * altura) / 2:.2f}")
        elif opcion == "3":
            lado = float(input("Lado del cuadrado: "))
            print(f"Área: {lado ** 2:.2f}")
        elif opcion == "4":
            print("¡Hasta luego!")
            break
        else:
            print("Opción inválida. Intente nuevamente")

if __name__ == "__main__":
    calcular_area()