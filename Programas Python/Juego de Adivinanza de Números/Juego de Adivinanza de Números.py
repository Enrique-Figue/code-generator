import random

def juego_adivinanza():
    print("Adivina el número entre 1 y 100. ¡Tienes 10 intentos!")
    numero_secreto = random.randint(1, 100)
    intentos = 0

    while intentos < 10:
        try:
            guess = int(input("Ingresa tu número: "))
            intentos += 1
            
            if guess < numero_secreto:
                print("El número es mayor. Intentos restantes:", 10 - intentos)
            elif guess > numero_secreto:
                print("El número es menor. Intentos restantes:", 10 - intentos)
            else:
                print(f"¡Correcto! Adivinaste en {intentos} intentos.")
                return
        except ValueError:
            print("Error: Ingresa solo números enteros.")

    print(f"¡Agotaste tus intentos! El número era {numero_secreto}.")

if __name__ == "__main__":
    juego_adivinanza()