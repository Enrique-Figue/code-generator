import math
from colorama import Fore, init

init(autoreset=True)

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_area_cuadrado(lado):
    return lado ** 2

def calcular_area_rectangulo(largo, ancho):
    return largo * ancho

def mostrar_menu():
    print(Fore.CYAN + "\nCalculadora de Áreas Geométricas")
    print(Fore.YELLOW + "1. Círculo")
    print(Fore.YELLOW + "2. Triángulo")
    print(Fore.YELLOW + "3. Cuadrado")
    print(Fore.YELLOW + "4. Rectángulo")
    print(Fore.RED + "5. Salir")

def obtener_numero(mensaje):
    while True:
        try:
            return float(input(Fore.GREEN + mensaje))
        except ValueError:
            print(Fore.RED + "Error: Ingresa un número válido")

def main():
    while True:
        mostrar_menu()
        opcion = input(Fore.BLUE + "Selecciona una opción (1-5): ")
        
        if opcion == '5':
            print(Fore.MAGENTA + "¡Hasta luego!")
            break
        
        if opcion not in ('1', '2', '3', '4'):
            print(Fore.RED + "Opción inválida. Intenta nuevamente.")
            continue
        
        try:
            if opcion == '1':
                radio = obtener_numero("Ingresa el radio del círculo: ")
                area = calcular_area_circulo(radio)
            elif opcion == '2':
                base = obtener_numero("Ingresa la base del triángulo: ")
                altura = obtener_numero("Ingresa la altura del triángulo: ")
                area = calcular_area_triangulo(base, altura)
            elif opcion == '3':
                lado = obtener_numero("Ingresa el lado del cuadrado: ")
                area = calcular_area_cuadrado(lado)
            elif opcion == '4':
                largo = obtener_numero("Ingresa el largo del rectángulo: ")
                ancho = obtener_numero("Ingresa el ancho del rectángulo: ")
                area = calcular_area_rectangulo(largo, ancho)
            
            print(Fore.GREEN + f"El área calculada es: {area:.2f}")
        except KeyboardInterrupt:
            print(Fore.RED + "\nOperación cancelada por el usuario")
            break

if __name__ == "__main__":
    main()