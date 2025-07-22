import random

def main():
    operaciones = {
        '+': lambda a, b: a + b,
        '-': lambda a, b: a - b,
        '*': lambda a, b: a * b,
        '/': lambda a, b: a // b
    }
    
    puntos = 0
    total_preguntas = 5
    
    print("¡Bienvenido al Quiz Matemático!")
    print(f"Resuelve estas {total_preguntas} operaciones básicas:")
    
    for _ in range(total_preguntas):
        operador = random.choice(list(operaciones.keys()))
        
        if operador == '/':
            num2 = random.randint(1, 10)
            resultado_correcto = random.randint(1, 10)
            num1 = num2 * resultado_correcto
        else:
            num1 = random.randint(1, 100)
            num2 = random.randint(1, 100)
            if operador == '-' and num2 > num1:
                num1, num2 = num2, num1
            resultado_correcto = operaciones[operador](num1, num2)
        
        print(f"\n¿Cuánto es {num1} {operador} {num2}?")
        
        try:
            respuesta = int(input("Tu respuesta: "))
        except ValueError:
            respuesta = None
        
        if respuesta == resultado_correcto:
            puntos += 1
            print("¡Correcto! ✅")
        else:
            print(f"Incorrecto. ❌ La respuesta era {resultado_correcto}")
    
    print(f"\nJuego terminado. Puntuación: {puntos}/{total_preguntas}")
    print(f"Porcentaje de aciertos: {(puntos/total_preguntas)*100}%")

if __name__ == "__main__":
    main()