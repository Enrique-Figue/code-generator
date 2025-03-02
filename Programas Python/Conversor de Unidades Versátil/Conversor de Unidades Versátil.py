def main():
    print("Conversor de Unidades Versátil")
    while True:
        print("\nOpciones disponibles:")
        print("1. Celsius a Fahrenheit")
        print("2. Fahrenheit a Celsius")
        print("3. Kilómetros a Millas")
        print("4. Millas a Kilómetros")
        print("5. Kilogramos a Libras")
        print("6. Libras a Kilogramos")
        print("7. Salir")
        
        opcion = input("\nSeleccione una opción (1-7): ")
        
        if opcion == '7':
            print("¡Hasta luego!")
            break
        
        if opcion not in ('1','2','3','4','5','6'):
            print("Error: Opción no válida. Intente nuevamente.")
            continue
        
        try:
            valor = float(input("Ingrese el valor a convertir: "))
        except ValueError:
            print("Error: Ingrese un número válido.")
            continue
        
        if opcion == '1':
            resultado = (valor * 9/5) + 32
            print(f"{valor}°C = {resultado:.2f}°F")
        elif opcion == '2':
            resultado = (valor - 32) * 5/9
            print(f"{valor}°F = {resultado:.2f}°C")
        elif opcion == '3':
            resultado = valor * 0.621371
            print(f"{valor} km = {resultado:.2f} millas")
        elif opcion == '4':
            resultado = valor / 0.621371
            print(f"{valor} millas = {resultado:.2f} km")
        elif opcion == '5':
            resultado = valor * 2.20462
            print(f"{valor} kg = {resultado:.2f} lb")
        elif opcion == '6':
            resultado = valor / 2.20462
            print(f"{valor} lb = {resultado:.2f} kg")

if __name__ == "__main__":
    main()