def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    print("Conversor de Temperatura")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    
    while True:
        opcion = input("Seleccione una opción (1/2): ")
        if opcion in ("1", "2"):
            break
        print("Opción inválida. Intente nuevamente.")
    
    try:
        temperatura = float(input("Ingrese la temperatura: "))
        if opcion == "1":
            resultado = celsius_a_fahrenheit(temperatura)
            print(f"{temperatura}°C = {resultado:.2f}°F")
        else:
            resultado = fahrenheit_a_celsius(temperatura)
            print(f"{temperatura}°F = {resultado:.2f}°C")
    except ValueError:
        print("Error: Ingrese un valor numérico válido.")

if __name__ == "__main__":
    main()