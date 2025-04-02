import math

def calcular_area_circulo():
    while True:
        try:
            radio = float(input("Ingrese el radio del círculo: "))
            area = math.pi * radio ** 2
            return f"Área del círculo: {area:.2f}"
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

def calcular_area_triangulo():
    while True:
        try:
            base = float(input("Ingrese la base del triángulo: "))
            altura = float(input("Ingrese la altura del triángulo: "))
            area = (base * altura) / 2
            return f"Área del triángulo: {area:.2f}"
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

def calcular_area_rectangulo():
    while True:
        try:
            largo = float(input("Ingrese el largo del rectángulo: "))
            ancho = float(input("Ingrese el ancho del rectángulo: "))
            area = largo * ancho
            return f"Área del rectángulo: {area:.2f}"
        except ValueError:
            print("Error: Ingrese valores numéricos válidos.")

def main():
    opciones = {
        '1': {'nombre': 'Círculo', 'funcion': calcular_area_circulo},
        '2': {'nombre': 'Triángulo', 'funcion': calcular_area_triangulo},
        '3': {'nombre': 'Rectángulo', 'funcion': calcular_area_rectangulo}
    }

    while True:
        print("\nCalculadora de Áreas Geométricas")
        print("1. Círculo")
        print("2. Triángulo")
        print("3. Rectángulo")
        print("4. Salir")
        
        opcion = input("Seleccione una figura (1-4): ")
        
        if opcion == '4':
            print("¡Hasta luego!")
            break
            
        if opcion in opciones:
            resultado = opciones[opcion]['funcion']()
            print(f"\nResultado: {resultado}\n")
        else:
            print("Opción inválida. Intente nuevamente.")

if __name__ == "__main__":
    main()