# Juego de Adivinanza de Números
import random

numero_secreto = random.randint(1, 100)
intentos = 0

print("Adivina el número entre 1 y 100!")

while True:
    try:
        intento_usuario = int(input("Tu intento: "))
        intentos += 1
        
        if intento_usuario < numero_secreto:
            print("Demasiado bajo. Intenta de nuevo.")
        elif intento_usuario > numero_secreto:
            print("Demasiado alto. Intenta de nuevo.")
        else:
            print(f"¡Correcto! Adivinaste en {intentos} intentos.")
            break
    except ValueError:
        print("Por favor, ingresa un número válido.")