import math

def calcular_area_circulo(radio):
    return math.pi * radio ** 2

def calcular_volumen_cilindro(radio, altura):
    return calcular_area_circulo(radio) * altura

def calcular_area_triangulo(base, altura):
    return (base * altura) / 2

def calcular_volumen_piramide(area_base, altura):
    return (area_base * altura) / 3

def input_numero(mensaje):
    while True:
        try:
            numero = float(input(mensaje))
            if numero <= 0:
                raise ValueError
            return numero
        except ValueError:
            print("Error: Ingrese un número positivo válido")

def main():
    print("Calculadora Geométrica")
    print("1. Área de círculo")
    print("2. Volumen de cilindro")
    print("3. Área de triángulo")
    print("4. Volumen de pirámide")

    opcion = input("Seleccione una opción (1-4): ")

    if opcion == '1':
        radio = input_numero("Radio del círculo: ")
        print(f"Área: {calcular_area_circulo(radio):.2f}")
    elif opcion == '2':
        radio = input_numero("Radio del cilindro: ")
        altura = input_numero("Altura del cilindro: ")
        print(f"Volumen: {calcular_volumen_cilindro(radio, altura):.2f}")
    elif opcion == '3':
        base = input_numero("Base del triángulo: ")
        altura = input_numero("Altura del triángulo: ")
        print(f"Área: {calcular_area_triangulo(base, altura):.2f}")
    elif opcion == '4':
        base = input_numero("Lado de la base piramidal: ")
        altura_base = input_numero("Altura del triángulo base: ")
        area_base = calcular_area_triangulo(base, altura_base)
        altura_piramide = input_numero("Altura de la pirámide: ")
        print(f"Volumen: {calcular_volumen_piramide(area_base, altura_piramide):.2f}")
    else:
        print("Opción inválida")

if __name__ == "__main__":
    main()