def suma(a, b):
    return a + b

def resta(a, b):
    return a - b

def multiplicacion(a, b):
    return a * b

def division(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        return "Error: División por cero"

def main():
    print("Calculadora Básica")
    print("Operaciones disponibles:")
    print("1. Suma")
    print("2. Resta")
    print("3. Multiplicación")
    print("4. División")
    
    opcion = input("Seleccione una operación (1-4): ")
    num1 = float(input("Ingrese el primer número: "))
    num2 = float(input("Ingrese el segundo número: "))
    
    if opcion == '1':
        resultado = suma(num1, num2)
    elif opcion == '2':
        resultado = resta(num1, num2)
    elif opcion == '3':
        resultado = multiplicacion(num1, num2)
    elif opcion == '4':
        resultado = division(num1, num2)
    else:
        resultado = "Opción no válida"
    
    print(f"Resultado: {resultado}")

if __name__ == "__main__":
    main()