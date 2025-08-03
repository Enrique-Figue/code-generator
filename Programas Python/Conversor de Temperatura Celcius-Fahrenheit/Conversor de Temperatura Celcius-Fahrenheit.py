def celsius_a_fahrenheit(c):
    return (c * 9/5) + 32

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

def main():
    print("Conversor de Temperatura")
    while True:
        print("\nOpciones:")
        print("1. Celsius a Fahrenheit")
        print("2. Fahrenheit a Celsius")
        print("3. Salir")
        
        opcion = input("Seleccione una opción (1/2/3): ")
        
        if opcion == "3":
            print("¡Hasta luego!")
            break
            
        if opcion not in ("1", "2"):
            print("Opción inválida, intente nuevamente")
            continue
            
        try:
            temperatura = float(input("Ingrese la temperatura a convertir: "))
        except ValueError:
            print("Error: Ingrese un valor numérico")
            continue
            
        if opcion == "1":
            resultado = celsius_a_fahrenheit(temperatura)
            print(f"{temperatura}°C = {resultado:.2f}°F")
        elif opcion == "2":
            resultado = fahrenheit_a_celsius(temperatura)
            print(f"{temperatura}°F = {resultado:.2f}°C")

if __name__ == "__main__":
    main()