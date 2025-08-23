def main():
    import math

    def calcular_area_rectangulo(base, altura):
        return base * altura

    def calcular_perimetro_rectangulo(base, altura):
        return 2 * (base + altura)

    def calcular_area_circulo(radio):
        return math.pi * radio ** 2

    def calcular_circunferencia(radio):
        return 2 * math.pi * radio

    def mostrar_menu():
        print("\nCalculadora Geométrica")
        print("1. Rectángulo")
        print("2. Círculo")
        print("3. Salir")

    while True:
        mostrar_menu()
        opcion = input("Seleccione una figura (1-3): ")

        if opcion == "1":
            try:
                base = float(input("Ingrese la base del rectángulo: "))
                altura = float(input("Ingrese la altura del rectángulo: "))
                print(f"Área: {calcular_area_rectangulo(base, altura):.2f}")
                print(f"Perímetro: {calcular_perimetro_rectangulo(base, altura):.2f}")
            except ValueError:
                print("Error: Ingrese valores numéricos válidos")

        elif opcion == "2":
            try:
                radio = float(input("Ingrese el radio del círculo: "))
                print(f"Área: {calcular_area_circulo(radio):.2f}")
                print(f"Circunferencia: {calcular_circunferencia(radio):.2f}")
            except ValueError:
                print("Error: Ingrese un valor numérico válido")

        elif opcion == "3":
            print("¡Hasta luego!")
            break

        else:
            print("Opción inválida. Intente nuevamente.")

if __name__ == "__main__":
    main()