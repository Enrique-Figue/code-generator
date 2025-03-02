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
                print("Muy bajo. Intenta de nuevo.")
            elif guess > numero_secreto:
                print("Muy alto. Intenta de nuevo.")
            else:
                print(f"¡Correcto! Lo encontraste en {intentos} intentos.")
                break
        except ValueError:
            print("Por favor, ingresa un número válido.")

if __name__ == "__main__":
    main()