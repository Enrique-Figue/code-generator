import random

def math_trainer():
    print("¡Bienvenido al Entrenador de Multiplicación!")
    print("Responde correctamente 10 preguntas para practicar.\n")
    
    score = 0
    for i in range(1, 11):
        num1 = random.randint(1, 10)
        num2 = random.randint(1, 10)
        correct_answer = num1 * num2
        
        while True:
            try:
                user_answer = int(input(f"Pregunta {i}: ¿Cuánto es {num1} x {num2}? "))
                if user_answer == correct_answer:
                    print("¡Correcto! 🎉\n")
                    score += 1
                    break
                else:
                    print("Incorrecto. Intenta nuevamente.\n")
            except ValueError:
                print("Por favor ingresa un número válido.\n")
    
    print(f"¡Juego terminado! Puntuación final: {score}/10")
    if score == 10:
        print("¡Perfecto! 🌟")
    elif score >= 7:
        print("¡Muy bien! 👍")
    else:
        print("Sigue practicando. 💪")

if __name__ == "__main__":
    math_trainer()