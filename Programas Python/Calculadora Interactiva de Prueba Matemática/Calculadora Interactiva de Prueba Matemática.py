import random

def generar_problema():
    operaciones = [
        ('+', lambda a, b: a + b),
        ('-', lambda a, b: a - b),
        ('*', lambda a, b: a * b),
        ('/', lambda a, b: a // b)
    ]
    op, funcion = random.choice(operaciones)
    
    if op == '/':
        b = random.randint(1, 10)
        a = b * random.randint(1, 10)
    else:
        a = random.randint(1, 20)
        b = random.randint(1, 20)
    
    problema = f"{a} {op} {b}"
    respuesta_correcta = funcion(a, b)
    return problema, respuesta_correcta

def main():
    print("Bienvenido a la Prueba Matemática\nResponde 3 preguntas para evaluar tus habilidades.")
    puntaje = 0
    
    for _ in range(3):
        problema, correcto = generar_problema()
        print(f"\nCuánto es {problema}?")
        
        while True:
            try:
                respuesta = int(input("Tu respuesta: "))
                break
            except ValueError:
                print("Por favor, ingresa un número entero.")
        
        if respuesta == correcto:
            print("¡Correcto!")
            puntaje += 1
        else:
            print(f"Incorrecto. La respuesta correcta es {correcto}.")
    
    print(f"\nPuntaje final: {puntaje}/3. ¡Sigue practicando!")

if __name__ == "__main__":
    main()