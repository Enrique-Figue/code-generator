import random

puntuacion = 0
total_preguntas = 5

print("Bienvenido al Quiz Matemático!\nResuelve las siguientes operaciones:")

for _ in range(total_preguntas):
    operacion = random.choice(['+', '-', '*', '/'])
    
    if operacion == '/':
        divisor = random.randint(1, 10)
        cociente = random.randint(1, 10)
        dividendo = divisor * cociente  # Asegura división exacta
        num1, num2 = dividendo, divisor
    else:
        num1 = random.randint(1, 20)
        num2 = random.randint(1, 20)
        if operacion == '-':
            num1, num2 = sorted([num1, num2], reverse=True)  # Evita números negativos
    
    # Calcular resultado correcto
    if operacion == '+':
        respuesta = num1 + num2
    elif operacion == '-':
        respuesta = num1 - num2
    elif operacion == '*':
        respuesta = num1 * num2
    else:
        respuesta = num1 // num2
    
    # Mostrar problema y recibir respuesta
    usuario = int(input(f"\n{num1} {operacion} {num2} = "))
    
    # Verificar respuesta
    if usuario == respuesta:
        print("✅ Correcto")
        puntuacion += 1
    else:
        print(f"❌ Incorrecto. La respuesta era: {respuesta}")

print(f"\nPuntuación final: {puntuacion}/{total_preguntas} ({(puntuacion/total_preguntas)*100}%)")