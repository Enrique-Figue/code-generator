import random

def juego_adivinanza():
    numero_secreto = random.randint(1, 100)
    intentos = 0
    print("¡Adivina el número entre 1 y 100!")

    while True:
        try:
            intento = int(input("Tu intento: "))
            intentos += 1

            if intento < numero_secreto:
                print("El número es mayor. Intenta de nuevo.")
            elif intento > numero_secreto:
                print("El número es menor. Intenta de nuevo.")
            else:
                print(f"¡Correcto! Lo adivinaste en {intentos} intentos.")
                break
        except ValueError:
            print("Por favor, ingresa un número válido.")

if __name__ == "__main__":
    juego_adivinanza()