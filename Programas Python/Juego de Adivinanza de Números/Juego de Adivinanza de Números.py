import random

def main():
    print("¡Adivina el número entre 1 y 100!")
    intentos = 0
    numero_secreto = random.randint(1, 100)
    
    while True:
        try:
            guess = int(input("Ingresa tu intento: "))
            intentos += 1
            
            if guess < numero_secreto:
                print("Demasiado bajo. Intenta de nuevo.")
            elif guess > numero_secreto:
                print("Demasiado alto. Intenta de nuevo.")
            else:
                print(f"¡Correcto! Acertaste en {intentos} intentos.")
                reinicio = input("¿Jugar de nuevo? (s/n): ").lower()
                if reinicio == "s":
                    numero_secreto = random.randint(1, 100)
                    intentos = 0
                else:
                    print("¡Gracias por jugar!")
                    break
        except ValueError:
            print("Error: Ingresa solo números enteros.")

if __name__ == "__main__":
    main()