def main():
    print("Calculadora Básica\n")
    while True:
        try:
            num1 = float(input("Ingrese el primer número: "))
            num2 = float(input("Ingrese el segundo número: "))
            op = input("Elija operación (+ - * /) o 'q' para salir: ").strip()
            
            if op == 'q':
                print("¡Hasta luego!")
                return
                
            if op == '+':
                res = num1 + num2
            elif op == '-':
                res = num1 - num2
            elif op == '*':
                res = num1 * num2
            elif op == '/':
                res = num1 / num2 if num2 != 0 else "Error: División por cero"
            else:
                print("Operación inválida\n")
                continue
                
            print(f"Resultado: {res}\n")
            
        except ValueError:
            print("Error: Ingrese números válidos\n")
        except Exception as e:
            print(f"Error inesperado: {str(e)}\n")

if __name__ == "__main__":
    main()