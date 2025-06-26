def mostrar_menu():
    print("\n1. Sumar")
    print("2. Restar")
    print("3. Multiplicar")
    print("4. Dividir")
    print("5. Salir")

def obtener_numero(mensaje):
    while True:
        try:
            return float(input(mensaje))
        except ValueError:
            print("Error: Ingresa un número válido.")

def main():
    while True:
        mostrar_menu()
        opcion = input("Selecciona una opción (1-5): ")
        
        if opcion == "5":
            print("¡Hasta luego!")
            break
        
        if opcion not in ("1", "2", "3", "4"):
            print("Opción no válida. Intenta de nuevo.")
            continue
        
        num1 = obtener_numero("Ingresa el primer número: ")
        num2 = obtener_numero("Ingresa el segundo número: ")
        
        if opcion == "1":
            resultado = num1 + num2
            print(f"Resultado: {num1} + {num2} = {resultado}")
        elif opcion == "2":
            resultado = num1 - num2
            print(f"Resultado: {num1} - {num2} = {resultado}")
        elif opcion == "3":
            resultado = num1 * num2
            print(f"Resultado: {num1} × {num2} = {resultado}")
        elif opcion == "4":
            if num2 == 0:
                print("Error: No se puede dividir entre cero.")
            else:
                resultado = num1 / num2
                print(f"Resultado: {num1} ÷ {num2} = {resultado}")

if __name__ == "__main__":
    main()