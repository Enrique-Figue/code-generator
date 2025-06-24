def convertir_temperatura():
    opcion = input("Elige conversión:\n1. Celsius a Fahrenheit\n2. Fahrenheit a Celsius\n> ")
    if opcion not in ('1', '2'):
        print("Opción inválida.")
        return
    try:
        valor = float(input("Ingresa la temperatura: "))
        if opcion == '1':
            resultado = (valor * 9/5) + 32
            print(f"{valor}°C = {resultado:.2f}°F")
        else:
            resultado = (valor - 32) * 5/9
            print(f"{valor}°F = {resultado:.2f}°C")
    except ValueError:
        print("Error: Ingresa un número válido.")

def convertir_distancia():
    opcion = input("Elige conversión:\n1. Kilómetros a Millas\n2. Millas a Kilómetros\n> ")
    if opcion not in ('1', '2'):
        print("Opción inválida.")
        return
    try:
        valor = float(input("Ingresa la distancia: "))
        if opcion == '1':
            resultado = valor * 0.621371
            print(f"{valor} km = {resultado:.2f} millas")
        else:
            resultado = valor / 0.621371
            print(f"{valor} millas = {resultado:.2f} km")
    except ValueError:
        print("Error: Ingresa un número válido.")

def main():
    while True:
        print("\nConversor de Unidades")
        print("1. Temperatura (Celsius <-> Fahrenheit)")
        print("2. Distancia (Kilómetros <-> Millas)")
        print("3. Salir")
        opcion = input("Elige una opción: ")
        
        if opcion == '1':
            convertir_temperatura()
        elif opcion == '2':
            convertir_distancia()
        elif opcion == '3':
            print("¡Hasta luego!")
            break
        else:
            print("Opción no válida. Intenta de nuevo.")

if __name__ == "__main__":
    main()