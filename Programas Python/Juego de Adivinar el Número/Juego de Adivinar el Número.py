import random

numero_secreto = random.randint(1, 100)
intentos = 0

print("Adivina el número entre 1 y 100!")

while True:
    try:
        intento = int(input("Introduce tu intento: "))
        intentos += 1
        
        if intento < numero_secreto:
            print("Demasiado bajo. Intenta de nuevo.")
        elif intento > numero_secreto:
            print("Demasiado alto. Intenta de nuevo.")
        else:
            print(f"¡Correcto! El número era {numero_secreto}.")
            print(f"Total de intentos: {intentos}")
            break
    except ValueError:
        print("Introduce un número válido.")