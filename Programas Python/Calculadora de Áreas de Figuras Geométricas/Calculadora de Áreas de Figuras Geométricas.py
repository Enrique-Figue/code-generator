import math

def calcular_area():
    while True:
        print("\nCalculadora de Áreas")
        print("1. Círculo")
        print("2. Triángulo")
        print("3. Cuadrado")
        print("4. Salir")
        
        opcion = input("Seleccione una figura (1-4): ")
        
        if opcion == "4":
            print("¡Hasta luego!")
            break
        
        try:
            if opcion == "1":
                radio = float(input("Radio del círculo: "))
                area = math.pi * radio ** 2
                print(f"Área: {area:.2f}")
            elif opcion == "2":
                base = float(input("Base del triángulo: "))
                altura = float(input("Altura del triángulo: "))
                area = (base * altura) / 2
                print(f"Área: {area:.2f}")
            elif opcion == "3":
                lado = float(input("Lado del cuadrado: "))
                area = lado ** 2
                print(f"Área: {area:.2f}")
            else:
                print("Opción inválida. Intente nuevamente.")
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    calcular_area()