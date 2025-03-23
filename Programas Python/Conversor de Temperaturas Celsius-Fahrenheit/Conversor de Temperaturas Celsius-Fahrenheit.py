while True:
    print("\nOpciones:")
    print("1. Convertir Celsius a Fahrenheit")
    print("2. Convertir Fahrenheit a Celsius")
    print("3. Salir")
    opcion = input("Seleccione una opción (1/2/3): ").strip()
    
    if opcion == '3':
        print("¡Hasta luego!")
        break
    
    if opcion not in ('1', '2'):
        print("Error: Opción no válida. Intente nuevamente.")
        continue
    
    while True:
        temp_input = input("Ingrese la temperatura: ").strip()
        try:
            temperatura = float(temp_input)
            break
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")
    
    if opcion == '1':
        fahrenheit = (temperatura * 9/5) + 32
        print(f"{temperatura}°C = {fahrenheit:.1f}°F (Fórmula: °F = °C × 9/5 + 32)")
    else:
        celsius = (temperatura - 32) * 5/9
        print(f"{temperatura}°F = {celsius:.1f}°C (Fórmula: °C = (°F - 32) × 5/9)")