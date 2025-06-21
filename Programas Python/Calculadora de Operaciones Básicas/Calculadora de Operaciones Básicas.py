def calculadora():
    print("Calculadora Básica - Operaciones disponibles: +, -, *, /")
    num1 = float(input("Ingrese el primer número: "))
    operacion = input("Ingrese la operación: ")
    num2 = float(input("Ingrese el segundo número: "))

    if operacion == '+':
        resultado = num1 + num2
    elif operacion == '-':
        resultado = num1 - num2
    elif operacion == '*':
        resultado = num1 * num2
    elif operacion == '/':
        resultado = num1 / num2 if num2 != 0 else "Error: División por cero"
    else:
        resultado = "Operación no válida"

    print(f"Resultado: {resultado}")

if __name__ == "__main__":
    calculadora()