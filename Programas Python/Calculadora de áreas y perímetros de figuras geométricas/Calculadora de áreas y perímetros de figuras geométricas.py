import math

def main():
    while True:
        print("\nCalculadora de Áreas y Perímetros")
        print("1. Círculo")
        print("2. Triángulo equilátero")
        print("3. Cuadrado")
        print("4. Salir")
        
        opcion = input("Seleccione una figura (1-4): ").strip()
        
        if opcion == "4":
            print("¡Hasta luego!")
            break
        
        try:
            if opcion == "1":
                radio = float(input("Radio del círculo: "))
                area = math.pi * (radio ** 2)
                perimetro = 2 * math.pi * radio
                print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
                
            elif opcion == "2":
                lado = float(input("Lado del triángulo: "))
                area = (math.sqrt(3)/4) * (lado ** 2)
                perimetro = 3 * lado
                print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
                
            elif opcion == "3":
                lado = float(input("Lado del cuadrado: "))
                area = lado ** 2
                perimetro = 4 * lado
                print(f"Área: {area:.2f}, Perímetro: {perimetro:.2f}")
                
            else:
                print("Opción no válida. Intente nuevamente.")
        
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

if __name__ == "__main__":
    main()