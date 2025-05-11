import random

def main():
    numero_secreto = random.randint(1, 100)
    intentos = 0
    print("¡Adivina el número entre 1 y 100!")

    while True:
        try:
            guess = int(input("Tu intento: "))
            intentos += 1

            if guess < numero_secreto:
                print("Más alto")
            elif guess > numero_secreto:
                print("Más bajo")
            else:
                print(f"¡Correcto! Lo lograste en {intentos} intentos.")
                break
        except ValueError:
            print("Error: Ingresa un número entero válido.")

if __name__ == "__main__":
    main()