def celsius_a_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_a_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def main():
    print("Conversor de Temperatura")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    
    opcion = input("Seleccione una opción (1/2): ")
    
    if opcion == '1':
        celsius = float(input("Ingrese temperatura en Celsius: "))
        fahrenheit = celsius_a_fahrenheit(celsius)
        print(f"{celsius}°C = {fahrenheit:.1f}°F")
    elif opcion == '2':
        fahrenheit = float(input("Ingrese temperatura en Fahrenheit: "))
        celsius = fahrenheit_a_celsius(fahrenheit)
        print(f"{fahrenheit}°F = {celsius:.1f}°C")
    else:
        print("Opción no válida")

if __name__ == "__main__":
    main()