import random

def generar_pregunta():
    operaciones = ['+', '-', '*', '/']
    op = random.choice(operaciones)
    if op == '+':
        num1 = random.randint(1, 20)
        num2 = random.randint(1, 20)
        resultado = num1 + num2
    elif op == '-':
        num1 = random.randint(1, 20)
        num2 = random.randint(1, 20)
        if num2 > num1:
            num1, num2 = num2, num1
        resultado = num1 - num2
    elif op == '*':
        num1 = random.randint(1, 10)
        num2 = random.randint(1, 10)
        resultado = num1 * num2
    else:
        num2 = random.randint(1, 10)
        resultado = random.randint(1, 10)
        num1 = num2 * resultado
    return num1, op, num2, resultado

print("Bienvenido al quiz de matemáticas. Responde 5 preguntas.")
puntaje = 0

for _ in range(5):
    num1, op, num2, correcto = generar_pregunta()
    pregunta = f"¿Cuánto es {num1} {op} {num2}? "
    try:
        respuesta = int(input(pregunta))
    except ValueError:
        respuesta = None
        print("Por favor ingresa un número entero.")
    if respuesta == correcto:
        print("¡Correcto!")
        puntaje += 1
    else:
        print(f"Incorrecto. La respuesta correcta es {correcto}.")

print(f"\nFin del quiz. Obtuviste {puntaje}/5 respuestas correctas.")