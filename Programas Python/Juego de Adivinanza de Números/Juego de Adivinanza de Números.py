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
                print("El número es mayor")
            elif intento > numero_secreto:
                print("El número es menor")
            else:
                print(f"¡Correcto! Número de intentos: {intentos}")
                break
                
        except ValueError:
            print("Error: Ingresa un número válido")

if __name__ == "__main__":
    juego_adivinanza()