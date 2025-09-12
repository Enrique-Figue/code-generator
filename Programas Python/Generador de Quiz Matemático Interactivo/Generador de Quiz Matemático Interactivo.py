import random

def generar_pregunta():
    operacion = random.choice(['+', '-', '*', '/'])
    if operacion == '/':
        b = random.randint(1, 10)
        respuesta = random.randint(1, 10)
        a = b * respuesta
    else:
        a = random.randint(1, 20)
        b = random.randint(1, 20)
        if operacion == '+':
            respuesta = a + b
        elif operacion == '-':
            respuesta = a - b
        elif operacion == '*':
            respuesta = a * b
    return f"{a} {operacion} {b}", respuesta

puntaje = 0
preguntas_totales = 5

print("¡Bienvenido al Quiz Matemático!")
print(f"Resuelve {preguntas_totales} operaciones básicas:\n")

for i in range(preguntas_totales):
    pregunta, respuesta_correcta = generar_pregunta()
    print(f"Pregunta {i+1}: ¿Cuánto es {pregunta}?")
    try:
        respuesta_usuario = int(input("Tu respuesta: "))
    except ValueError:
        print("¡Debes ingresar un número entero!\n")
        continue
        
    if respuesta_usuario == respuesta_correcta:
        print("✅ ¡Correcto!\n")
        puntaje += 1
    else:
        print(f"❌ Incorrecto. La respuesta es: {respuesta_correcta}\n")

print(f"Puntaje final: {puntaje}/{preguntas_totales}")
if puntaje == preguntas_totales:
    print("🌟 ¡Perfecto! ¡Dominas las operaciones básicas!")
elif puntaje >= preguntas_totales * 0.7:
    print("👍 ¡Buen trabajo! Sigue practicando")
else:
    print("💡 Sigue estudiando, mejorarás con la práctica")