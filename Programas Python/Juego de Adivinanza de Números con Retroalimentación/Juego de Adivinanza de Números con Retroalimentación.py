import random

def juego_adivinanza():
    print("¡Bienvenido al Juego de Adivinanza!")
    print("Adivina el número entre 1 y 100\n")
    
    numero_secreto = random.randint(1, 100)
    intentos = 0

    while True:
        try:
            intento = int(input("Ingresa tu número: "))
            intentos += 1

            if intento < numero_secreto:
                print("⚠️ ¡Más alto! Intenta nuevamente")
            elif intento > numero_secreto:
                print("⚠️ ¡Más bajo! Intenta nuevamente")
            else:
                print(f"\n🎉 ¡Correcto! Número adivinado en {intentos} intentos")
                break
                
        except ValueError:
            print("❌ Error: Ingresa un número válido")

if __name__ == "__main__":
    juego_adivinanza()