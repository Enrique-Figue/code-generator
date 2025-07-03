import random

numero_secreto = random.randint(1, 100)
intentos = 0

print("¡Adivina el número entre 1 y 100!")

while True:
    try:
        intento = int(input("Tu intento: "))
        intentos += 1
        
        if intento < numero_secreto:
            print("El número secreto es mayor. Intenta nuevamente.")
        elif intento > numero_secreto:
            print("El número secreto es menor. Intenta nuevamente.")
        else:
            print(f"¡Correcto! Adivinaste en {intentos} intentos.")
            break
            
    except ValueError:
        print("Error: Debes ingresar un número entero.")