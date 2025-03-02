def calculadora():
    while True:
        print("\nOpciones:")
        print("1. Suma")
        print("2. Resta")
        print("3. Multiplicación")
        print("4. División")
        print("5. Salir")
        
        try:
            opcion = int(input("Seleccione una opción (1-5): "))
            if opcion == 5:
                print("¡Hasta luego!")
                break
            
            if opcion not in [1, 2, 3, 4]:
                print("Error: Opción no válida.")
                continue
                
            num1 = float(input("Ingrese el primer número: "))
            num2 = float(input("Ingrese el segundo número: "))
            
            if opcion == 1:
                resultado = num1 + num2
                print(f"Resultado: {resultado}")
            elif opcion == 2:
                resultado = num1 - num2
                print(f"Resultado: {resultado}")
            elif opcion == 3:
                resultado = num1 * num2
                print(f"Resultado: {resultado}")
            elif opcion == 4:
                if num2 == 0:
                    print("Error: No se puede dividir entre cero.")
                else:
                    resultado = num1 / num2
                    print(f"Resultado: {resultado}")
        
        except ValueError:
            print("Error: Entrada no válida. Ingrese números.")
        except Exception as e:
            print(f"Error inesperado: {e}")

if __name__ == "__main__":
    calculadora()