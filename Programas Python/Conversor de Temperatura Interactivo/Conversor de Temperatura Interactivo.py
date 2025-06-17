while True:
    entrada = input("\nIngrese temperatura en Celsius (o 'salir' para terminar): ").strip()
    if entrada.lower() == 'salir':
        print("¡Hasta luego!")
        break
    try:
        celsius = float(entrada)
        fahrenheit = (celsius * 9/5) + 32
        print(f"{celsius}°C equivalen a {fahrenheit}°F (Fórmula: °F = °C × 9/5 + 32)")
    except ValueError:
        print("Error: Por favor ingrese un número válido.")