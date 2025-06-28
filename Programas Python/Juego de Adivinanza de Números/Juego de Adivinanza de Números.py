import random

numero_secreto = random.randint(1, 100)
intentos = 0

print("Adivina el número entre 1 y 100.")

while True:
    try:
        suposicion = int(input("Tu suposición: "))
        intentos += 1
        
        if suposicion < numero_secreto:
            print("Más alto. Intenta de nuevo.")
        elif suposicion > numero_secreto:
            print("Más bajo. Intenta de nuevo.")
        else:
            print(f"¡Correcto! Adivinaste en {intentos} intentos.")
            break
            
    except ValueError:
        print("Error: Ingresa un número válido.")