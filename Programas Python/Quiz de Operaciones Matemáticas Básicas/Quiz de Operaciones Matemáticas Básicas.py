import random

def quiz_matematicas(cant_preguntas):
    puntaje = 0
    operadores = ['+', '-', '*', '/']
    
    for i in range(cant_preguntas):
        num1 = random.randint(1, 10)
        num2 = random.randint(1, 10)
        op = random.choice(operadores)
        
        if op == '-':
            num1, num2 = sorted((num1, num2), reverse=True)
        elif op == '/':
            num1, num2 = num1 * num2, num2  # Asegurar división exacta
        
        pregunta = f"{num1} {op} {num2} = ? "
        respuesta_correcta = eval(f"{num1}{op}{num2}")
        
        try:
            respuesta_usuario = float(input(pregunta))
            if round(respuesta_usuario, 2) == round(respuesta_correcta, 2):
                print("¡Correcto!")
                puntaje += 1
            else:
                print(f"Incorrecto. La respuesta correcta era {respuesta_correcta}")
        except ValueError:
            print("Ingresa un número válido")
            
    print(f"\nPuntaje final: {puntaje}/{cant_preguntas}")

if __name__ == "__main__":
    quiz_matematicas(5)