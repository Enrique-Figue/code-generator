import math

def calcular_area_triangulo(base, altura):
    """Calcula el área de un triángulo usando base y altura."""
    return (base * altura) / 2

def calcular_area_circulo(radio):
    """Calcula el área de un círculo usando su radio."""
    return math.pi * radio ** 2

def calcular_area_cuadrado(lado):
    """Calcula el área de un cuadrado usando la longitud de un lado."""
    return lado ** 2

def calcular_area_rectangulo(largo, ancho):
    """Calcula el área de un rectángulo usando largo y ancho."""
    return largo * ancho

def obtener_numero_positivo(mensaje):
    """Solicita un número positivo al usuario, repite hasta que sea válido."""
    while True:
        try:
            valor = float(input(mensaje))
            if valor > 0:
                return valor
            print("¡El número debe ser positivo!")
        except ValueError:
            print("¡Entrada inválida! Ingrese un número.")

def main():
    print("Calculadora de Áreas Geométricas")
    funciones = {
        '1': {
            'nombre': "Triángulo",
            'func': calcular_area_triangulo,
            'inputs': ["Base: ", "Altura: "]
        },
        '2': {
            'nombre': "Círculo",
            'func': calcular_area_circulo,
            'inputs': ["Radio: "]
        },
        '3': {
            'nombre': "Cuadrado",
            'func': calcular_area_cuadrado,
            'inputs': ["Lado: "]
        },
        '4': {
            'nombre': "Rectángulo",
            'func': calcular_area_rectangulo,
            'inputs': ["Largo: ", "Ancho: "]
        }
    }

    while True:
        print("\nOpciones:")
        for key, value in funciones.items():
            print(f"{key}. {value['nombre']}")
        print("5. Salir")

        opcion = input("Seleccione una figura (1-5): ")

        if opcion == '5':
            print("¡Hasta luego!")
            break

        if opcion not in funciones:
            print("Opción inválida. Intente de nuevo.")
            continue

        figura = funciones[opcion]
        print(f"\nCalculando área de {figura['nombre']}:")
        valores = [obtener_numero_positivo(mensaje) for mensaje in figura['inputs']]
        area = figura['func'](*valores)
        print(f"El área es: {area:.2f}\n")

if __name__ == "__main__":
    main()