import random

def generar_operacion():
    operaciones = ['+', '-', '*', '/']
    operacion = random.choice(operaciones)
    a = random.randint(1, 10)
    b = random.randint(1, 10)
    
    if operacion == '/':
        while a % b != 0:
            a = random.randint(1, 10)
            b = random.randint(1, 10)
    
    return a, b, operacion

def practicar_matematicas():
    puntos = 0
    intentos = 5
    
    print("¡Practica operaciones matemáticas! Resuelve 5 problemas:")
    
    for _ in range(intentos):
        a, b, op = generar_operacion()
        
        while True:
            try:
                respuesta = float(input(f"\n{a} {op} {b} = "))
                break
            except ValueError:
                print("Por favor, ingresa un número válido.")
        
        resultado = eval(f"{a} {op} {b}")
        
        if respuesta == resultado:
            print("¡Correcto!")
            puntos += 1
        else:
            print(f"Incorrecto. La respuesta correcta es {resultado}")
    
    print(f"\nJuego terminado. Tu puntuación: {puntos}/{intentos}")

if __name__ == "__main__":
    practicar_matematicas()