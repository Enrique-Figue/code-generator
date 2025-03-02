import random

def juego_adivina_numero():
    numero_secreto = random.randint(1, 100)
    intentos = 0
    adivinado = False
    
    print("¡Adivina el número entre 1 y 100!")
    
    while not adivinado:
        try:
            intento = int(input("Ingresa tu intento: "))
            intentos += 1
            
            if intento < numero_secreto:
                print("Demasiado bajo. Intenta de nuevo.")
            elif intento > numero_secreto:
                print("Demasiado alto. Intenta de nuevo.")
            else:
                adivinado = True
                print(f"¡Correcto! Lo lograste en {intentos} intentos.")
        
        except ValueError:
            print("Error: Ingresa un número entero válido.")

if __name__ == "__main__":
    juego_adivina_numero()