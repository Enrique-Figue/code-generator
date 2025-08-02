import random

numero_secreto = random.randint(1, 100)
intentos = 0

print("¡Adivina el número entre 1 y 100!")

while True:
    try:
        supuesto = int(input("Ingresa tu número: "))
        intentos += 1
        
        if supuesto < numero_secreto:
            print("Más alto. Intenta de nuevo.")
        elif supuesto > numero_secreto:
            print("Más bajo. Intenta de nuevo.")
        else:
            print(f"¡Correcto! Adivinaste en {intentos} intentos.")
            break
    except ValueError:
        print("Error: Ingresa un número entero válido.")