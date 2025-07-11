import random

print("¡Bienvenido al Juego de Adivinanza!")
print("He elegido un número entre 1 y 100. ¡Adivínalo!")

numero_secreto = random.randint(1, 100)
intentos = 0

while True:
    try:
        guess = int(input("Ingresa tu número: "))
        intentos += 1
        
        if guess < numero_secreto:
            print("Demasiado bajo. ¡Intenta de nuevo!")
        elif guess > numero_secreto:
            print("Demasiado alto. ¡Intenta de nuevo!")
        else:
            print(f"¡Correcto! Lo lograste en {intentos} intentos.")
            break
    except ValueError:
        print("Por favor, ingresa un número válido.")