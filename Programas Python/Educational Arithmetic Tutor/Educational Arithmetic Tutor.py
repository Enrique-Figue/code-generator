def main():
    print("¡Bienvenido al Tutor Aritmético Educativo!")
    print("Operaciones disponibles: +, -, *, /, **")
    
    while True:
        try:
            num1 = float(input("\nIngrese el primer número: "))
            num2 = float(input("Ingrese el segundo número: "))
            operacion = input("Seleccione la operación: ").strip()
            
            if operacion == '+':
                resultado = num1 + num2
                print(f"\nProceso: {num1} + {num2} = {resultado}")
            elif operacion == '-':
                resultado = num1 - num2
                print(f"\nProceso: {num1} - {num2} = {resultado}")
            elif operacion == '*':
                resultado = num1 * num2
                print(f"\nProceso: {num1} × {num2} = {resultado}")
            elif operacion == '/':
                if num2 == 0:
                    raise ZeroDivisionError
                resultado = num1 / num2
                print(f"\nProceso: {num1} ÷ {num2} = {resultado}")
            elif operacion == '**':
                resultado = num1 ** num2
                print(f"\nProceso: {num1} elevado a {num2} = {resultado}")
            else:
                print("\n❌ Operación no válida. Use +, -, *, /, **")
                continue
                
        except ValueError:
            print("\n❌ Error: Ingrese números válidos")
        except ZeroDivisionError:
            print("\n❌ Error: No se puede dividir por cero")
        
        continuar = input("\n¿Desea realizar otra operación? (s/n): ").lower()
        if continuar != 's':
            print("\n¡Gracias por aprender con nosotros! 🎓")
            break

if __name__ == "__main__":
    main()