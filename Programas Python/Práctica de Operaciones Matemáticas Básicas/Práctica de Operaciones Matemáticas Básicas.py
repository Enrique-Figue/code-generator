import random

def generar_pregunta():
    operadores = ['+', '-', '*', '/']
    op = random.choice(operadores)
    
    if op == '/':
        num2 = random.randint(1, 10)
        resultado = random.randint(1, 10)
        num1 = num2 * resultado
        return (num1, op, num2, resultado)
    else:
        num1 = random.randint(1, 20)
        num2 = random.randint(1, 20)
        if op == '+':
            res = num1 + num2
        elif op == '-':
            res = num1 - num2
        elif op == '*':
            res = num1 * num2
        return (num1, op, num2, res)

def main():
    print("Resuelve 5 problemas matemáticos:")
    puntaje = 0
    
    for _ in range(5):
        num1, op, num2, res = generar_pregunta()
        try:
            respuesta = float(input(f"¿Cuánto es {num1} {op} {num2}? "))
            if respuesta == res:
                print("¡Correcto!")
                puntaje += 1
            else:
                print(f"Incorrecto. La respuesta correcta es {res}.")
        except:
            print(f"Entrada inválida. La respuesta correcta es {res}.")
    
    print(f"Puntaje final: {puntaje}/5")

if __name__ == "__main__":
    main()