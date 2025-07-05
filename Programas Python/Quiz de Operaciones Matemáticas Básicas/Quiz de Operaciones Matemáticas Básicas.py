import random

print("¡Bienvenido al Quiz de Matemáticas!")
print("Resuelve las siguientes operaciones:")

puntuacion = 0

for _ in range(5):
    operador = random.choice(['+', '-', '*'])
    
    if operador == '-':
        num1 = random.randint(0, 10)
        num2 = random.randint(0, num1)
    elif operador == '*':
        num1 = random.randint(0, 5)
        num2 = random.randint(0, 5)
    else:
        num1 = random.randint(0, 10)
        num2 = random.randint(0, 10)
    
    respuesta_correcta = eval(f"{num1}{operador}{num2}")
    
    try:
        respuesta_usuario = int(input(f"{num1} {operador} {num2} = ? "))
    except ValueError:
        print("Por favor, ingresa un número entero válido.")
        continue
    
    if respuesta_usuario == respuesta_correcta:
        print("¡Correcto!\n")
        puntuacion += 1
    else:
        print(f"Incorrecto. La respuesta correcta es {respuesta_correcta}.\n")

print(f"Puntuación final: {puntuacion}/5")