def suma(a, b):
    """Retorna la suma de dos números."""
    return a + b

def resta(a, b):
    """Retorna la diferencia entre dos números."""
    return a - b

def multiplicacion(a, b):
    """Retorna el producto de dos números."""
    return a * b

def division(a, b):
    """Retorna el cociente de dos números. Maneja división por cero."""
    if b == 0:
        raise ValueError("No se puede dividir por cero.")
    return a / b

def main():
    """Interfaz interactiva para realizar operaciones básicas."""
    print("Calculadora Básica\nOperaciones: +, -, *, /\nEscribe 'salir' para terminar.")
    
    while True:
        entrada = input("\nIngrese operación (ej: 5 + 3): ").strip().lower()
        if entrada == "salir":
            print("¡Hasta luego!")
            break
        
        try:
            partes = entrada.split()
            if len(partes) != 3:
                raise ValueError("Formato inválido. Use: número operador número")
            
            a = float(partes[0])
            operador = partes[1]
            b = float(partes[2])
            
            if operador == "+":
                resultado = suma(a, b)
            elif operador == "-":
                resultado = resta(a, b)
            elif operador == "*":
                resultado = multiplicacion(a, b)
            elif operador == "/":
                resultado = division(a, b)
            else:
                raise ValueError("Operador no válido")
            
            print(f"Resultado: {resultado:.2f}")
        
        except ValueError as e:
            print(f"Error: {e}")
        except Exception as e:
            print(f"Error inesperado: {e}")

if __name__ == "__main__":
    main()