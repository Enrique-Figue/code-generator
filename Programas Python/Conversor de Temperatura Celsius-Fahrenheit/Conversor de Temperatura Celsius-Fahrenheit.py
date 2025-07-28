def conversor_temperatura():
    print("Conversor Celsius ↔ Fahrenheit")
    print("1. Celsius a Fahrenheit")
    print("2. Fahrenheit a Celsius")
    
    opcion = input("Seleccione conversión (1/2): ")
    valor = float(input("Ingrese la temperatura: "))
    
    if opcion == "1":
        resultado = (valor * 9/5) + 32
        print(f"\n{valor}°C = {resultado:.2f}°F")
    elif opcion == "2":
        resultado = (valor - 32) * 5/9
        print(f"\n{valor}°F = {resultado:.2f}°C")
    else:
        print("\nOpción no válida. Use 1 o 2.")

if __name__ == "__main__":
    conversor_temperatura()