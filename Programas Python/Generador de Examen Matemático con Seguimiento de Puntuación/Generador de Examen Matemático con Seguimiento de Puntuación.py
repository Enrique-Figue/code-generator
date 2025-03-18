import random

def math_quiz():
    print("Bienvenido al examen de matemáticas!")
    
    try:
        num_preguntas = int(input("¿Cuántas preguntas deseas intentar? "))
    except ValueError:
        print("Debes ingresar un número entero. Intenta de nuevo.")
        return
    
    puntuacion = 0
    
    for _ in range(num_preguntas):
        operacion = random.choice(['+', '-', '*', '/'])
        
        if operacion == '+':
            num1 = random.randint(1, 10)
            num2 = random.randint(1, 10)
            respuesta = num1 + num2
        elif operacion == '-':
            num1 = random.randint(1, 10)
            num2 = random.randint(1, 10)
            if num1 < num2:
                num1, num2 = num2, num1
            respuesta = num1 - num2
        elif operacion == '*':
            num1 = random.randint(1, 10)
            num2 = random.randint(1, 10)
            respuesta = num1 * num2
        elif operacion == '/':
            num2 = random.randint(1, 10)
            factor = random.randint(1, 10)
            num1 = num2 * factor
            respuesta = factor
        
        while True:
            try:
                entrada_usuario = int(input(f"¿Cuánto es {num1} {operacion} {num2}? "))
                break
            except ValueError:
                print("Por favor, ingresa un número entero.")
        
        if entrada_usuario == respuesta:
            print("¡Correcto!")
            puntuacion += 1
        else:
            print(f"Incorrecto. La respuesta correcta es {respuesta}.")
    
    print(f"\n¡Examen completado! Puntuación final: {puntuacion}/{num_preguntas}")

math_quiz()