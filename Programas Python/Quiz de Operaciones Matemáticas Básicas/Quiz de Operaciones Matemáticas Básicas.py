import random

def main():
    print("Resuelve las siguientes operaciones:")
    puntuacion = 0
    for _ in range(5):
        num1 = random.randint(1, 10)
        num2 = random.randint(1, 10)
        operador = random.choice(['+', '-', '*'])
        
        if operador == '+':
            resultado = num1 + num2
        elif operador == '-':
            resultado = num1 - num2
        else:
            resultado = num1 * num2
        
        pregunta = f"{num1} {operador} {num2} = ? "
        try:
            respuesta = int(input(pregunta))
        except ValueError:
            print("¡Ingresa un número válido!")
            continue
            
        if respuesta == resultado:
            print("Correcto!\n")
            puntuacion += 1
        else:
            print(f"Incorrecto. La respuesta era {resultado}\n")
    
    print(f"Juego terminado. Puntuación final: {puntuacion}/5")

if __name__ == "__main__":
    main()