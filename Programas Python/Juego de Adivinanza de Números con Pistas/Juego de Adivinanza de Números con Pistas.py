import random

def juego_adivinanza():
    numero_secreto = random.randint(1, 100)
    intentos = 0
    max_intentos = 10

    print("¡Adivina el número entre 1 y 100!")
    print(f"Tienes {max_intentos} intentos. ¡Buena suerte!")

    while intentos < max_intentos:
        try:
            guess = int(input("Introduce tu número: "))
            
            if guess < 1 or guess > 100:
                print("El número debe estar entre 1 y 100.")
                continue

            intentos += 1
            
            if guess == numero_secreto:
                print(f"¡Correcto! Acertaste en {intentos} intentos.")
                return
            elif guess < numero_secreto:
                print("El número secreto es mayor.")
            else:
                print("El número secreto es menor.")
                
            print(f"Intentos restantes: {max_intentos - intentos}\n")

        except ValueError:
            print("Entrada inválida. Introduce un número entero.")

    print(f"\n¡Agotaste tus intentos! El número era: {numero_secreto}")

if __name__ == "__main__":
    while True:
        juego_adivinanza()
        if input("\n¿Quieres jugar otra vez? (s/n): ").lower() != 's':
            break