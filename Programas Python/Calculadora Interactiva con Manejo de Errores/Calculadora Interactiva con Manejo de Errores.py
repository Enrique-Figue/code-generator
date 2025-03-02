def calcular(num1, num2, operacion):
    if operacion == 1:
        return num1 + num2
    elif operacion == 2:
        return num1 - num2
    elif operacion == 3:
        return num1 * num2
    elif operacion == 4:
        try:
            return num1 / num2
        except ZeroDivisionError:
            return "Error: División por cero"
    else:
        return "Operación no válida"

def obtener_numero(mensaje):
    while True:
        try:
            return float(input(mensaje))
        except ValueError:
            print("Entrada inválida. Ingrese un número.")

def main():
    print("Calculadora Básica\nOperaciones disponibles:")
    print("1: Suma | 2: Resta | 3: Multiplicación | 4: División")
    
    while True:
        num1 = obtener_numero("\nIngrese el primer número: ")
        num2 = obtener_numero("Ingrese el segundo número: ")
        
        operacion = int(input("Seleccione la operación (1-4): "))
        resultado = calcular(num1, num2, operacion)
        
        if isinstance(resultado, float):
            print(f"Resultado: {resultado:.2f}" if not resultado.is_integer() else f"Resultado: {int(resultado)}")
        else:
            print(resultado)
        
        continuar = input("¿Continuar? (s/n): ").lower()
        if continuar != 's':
            print("¡Hasta luego!")
            break

if __name__ == "__main__":
    main()