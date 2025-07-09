def conversor_temperatura():
    print("Conversor de Temperatura")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    
    opcion = input("Seleccione una opción (1/2): ")
    
    if opcion not in ("1", "2"):
        print("Opción inválida")
        return
    
    try:
        temp = float(input("Ingrese la temperatura a convertir: "))
    except ValueError:
        print("Error: Ingrese un número válido")
        return
    
    if opcion == "1":
        resultado = (temp * 9/5) + 32
        print(f"{temp}°C = {resultado:.2f}°F")
    else:
        resultado = (temp - 32) * 5/9
        print(f"{temp}°F = {resultado:.2f}°C")

if __name__ == "__main__":
    conversor_temperatura()