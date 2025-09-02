import random

def main():
    num_preguntas = 5
    puntaje = 0
    operadores = ['+', '-', '*', '/']

    print("¡Responde las siguientes operaciones matemáticas!")
    
    for pregunta in range(1, num_preguntas + 1):
        operador = random.choice(operadores)
        
        if operador == '/':
            num2 = random.randint(1, 10)
            num1 = num2 * random.randint(1, 10)
            respuesta_correcta = num1 // num2
        else:
            num1 = random.randint(1, 20)
            num2 = random.randint(1, 20)
            if operador == '+':
                respuesta_correcta = num1 + num2
            elif operador == '-':
                respuesta_correcta = num1 - num2
            elif operador == '*':
                respuesta_correcta = num1 * num2
        
        print(f"\nPregunta {pregunta}: {num1} {operador} {num2} = ?")
        respuesta_usuario = int(input("Tu respuesta: "))
        
        if respuesta_usuario == respuesta_correcta:
            print("¡Correcto!")
            puntaje += 1
        else:
            print(f"Incorrecto. La respuesta correcta es {respuesta_correcta}.")
    
    print(f"\nJuego terminado. Puntaje final: {puntaje}/{num_preguntas}")

if __name__ == "__main__":
    main()