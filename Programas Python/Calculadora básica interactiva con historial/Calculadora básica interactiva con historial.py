def sumar(a, b):
    return a + b

def restar(a, b):
    return a - b

def multiplicar(a, b):
    return a * b

def dividir(a, b):
    if b == 0:
        raise ValueError("No se puede dividir por cero")
    return a / b

def main():
    historial = []
    operaciones = {
        '1': ('Suma', sumar),
        '2': ('Resta', restar),
        '3': ('Multiplicación', multiplicar),
        '4': ('División', dividir)
    }
    
    while True:
        print("\nCalculadora básica")
        for clave, valor in operaciones.items():
            print(f"{clave}. {valor[0]}")
        print("5. Ver historial\n6. Salir")
        
        opcion = input("Seleccione operación: ")
        
        if opcion == '6':
            print("¡Hasta luego!")
            break
            
        if opcion == '5':
            print("\nHistorial:")
            for registro in historial:
                print(registro)
            continue
            
        if opcion not in operaciones:
            print("Opción inválida")
            continue
            
        try:
            num1 = float(input("Primer número: "))
            num2 = float(input("Segundo número: "))
            nombre_op, funcion = operaciones[opcion]
            resultado = funcion(num1, num2)
            registro = f"{nombre_op}: {num1} {['+', '-', '*', '/'][int(opcion)-1]} {num2} = {resultado}"
            historial.append(registro)
            print(f"Resultado: {resultado}")
            
        except ValueError as e:
            print(f"Error: {e}")
        except Exception as e:
            print(f"Error inesperado: {e}")

if __name__ == "__main__":
    main()