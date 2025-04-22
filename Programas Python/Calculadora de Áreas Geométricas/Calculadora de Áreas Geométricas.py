import math

def calcular_area_circulo():
    radio = float(input("Ingrese el radio del círculo: "))
    if radio <= 0:
        raise ValueError("El radio debe ser positivo")
    return math.pi * radio ** 2

def calcular_area_triangulo():
    base = float(input("Ingrese la base del triángulo: "))
    altura = float(input("Ingrese la altura del triángulo: "))
    if base <= 0 or altura <= 0:
        raise ValueError("Los valores deben ser positivos")
    return (base * altura) / 2

def calcular_area_rectangulo():
    largo = float(input("Ingrese el largo del rectángulo: "))
    ancho = float(input("Ingrese el ancho del rectángulo: "))
    if largo <= 0 or ancho <= 0:
        raise ValueError("Los valores deben ser positivos")
    return largo * ancho

def main():
    print("Calculadora de Áreas")
    while True:
        print("\nOpciones:")
        print("1. Círculo")
        print("2. Triángulo")
        print("3. Rectángulo")
        print("4. Salir")
        
        opcion = input("Seleccione una figura (1-4): ")
        
        try:
            if opcion == "1":
                area = calcular_area_circulo()
            elif opcion == "2":
                area = calcular_area_triangulo()
            elif opcion == "3":
                area = calcular_area_rectangulo()
            elif opcion == "4":
                print("¡Hasta luego!")
                break
            else:
                print("Opción no válida. Intente nuevamente.")
                continue
            
            print(f"El área calculada es: {area:.2f}")
        
        except ValueError as e:
            print(f"Error: {e}")
        except:
            print("Error inesperado. Intente nuevamente.")

if __name__ == "__main__":
    main()