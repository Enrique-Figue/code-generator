import random

operadores = ['+', '-', '*']
operador = random.choice(operadores)

if operador == '+':
    num1 = random.randint(1, 10)
    num2 = random.randint(1, 10)
    respuesta_correcta = num1 + num2
elif operador == '-':
    num1 = random.randint(2, 10)
    num2 = random.randint(1, num1)
    respuesta_correcta = num1 - num2
else:
    num1 = random.randint(1, 10)
    num2 = random.randint(1, 10)
    respuesta_correcta = num1 * num2

print(f"¿Cuánto es {num1} {operador} {num2}?")
try:
    respuesta_usuario = int(input("Tu respuesta: "))
except ValueError:
    print("Por favor ingresa un número entero válido.")
    exit()

if respuesta_usuario == respuesta_correcta:
    print("¡Correcto! Buen trabajo.")
else:
    print(f"Incorrecto. La respuesta correcta es {respuesta_correcta}.")