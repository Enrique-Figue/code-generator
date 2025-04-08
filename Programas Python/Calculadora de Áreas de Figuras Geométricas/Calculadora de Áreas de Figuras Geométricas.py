import math

while True:
    print("\n--- Calculadora de Áreas ---")
    print("1. Círculo")
    print("2. Triángulo")
    print("3. Cuadrado")
    print("4. Rectángulo")
    print("5. Salir")
    
    opcion = input("Selecciona una figura (1-5): ")
    
    if opcion == '5':
        print("¡Hasta luego!")
        break
    
    if opcion not in ['1', '2', '3', '4']:
        print("Opción inválida. Intenta de nuevo.")
        continue
    
    try:
        if opcion == '1':
            radio = float(input("Radio del círculo: "))
            if radio <= 0:
                raise ValueError
            area = math.pi * radio ** 2
        elif opcion == '2':
            base = float(input("Base del triángulo: "))
            altura = float(input("Altura del triángulo: "))
            if base <= 0 or altura <= 0:
                raise ValueError
            area = 0.5 * base * altura
        elif opcion == '3':
            lado = float(input("Lado del cuadrado: "))
            if lado <= 0:
                raise ValueError
            area = lado ** 2
        elif opcion == '4':
            largo = float(input("Largo del rectángulo: "))
            ancho = float(input("Ancho del rectángulo: "))
            if largo <= 0 or ancho <= 0:
                raise ValueError
            area = largo * ancho
        
        print(f"Área calculada: {area:.2f}")
    except ValueError:
        print("Error: Ingresa valores numéricos positivos.")