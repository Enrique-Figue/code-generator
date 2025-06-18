import random

puntaje = 0
total_preguntas = 5

print("Resuelve las siguientes operaciones:")
for _ in range(total_preguntas):
    a = random.randint(1, 20)
    b = random.randint(1, 20)
    operacion = random.choice(['+', '-', '*'])
    
    if operacion == '+':
        resultado = a + b
    elif operacion == '-':
        resultado = a - b
    else:
        resultado = a * b
    
    try:
        respuesta = int(input(f"\n{a} {operacion} {b} = "))
    except ValueError:
        respuesta = None
    
    if respuesta == resultado:
        print("¡Correcto!")
        puntaje += 1
    else:
        print(f"Incorrecto. La respuesta correcta es {resultado}.")

print(f"\nPuntaje final: {puntaje}/{total_preguntas}")