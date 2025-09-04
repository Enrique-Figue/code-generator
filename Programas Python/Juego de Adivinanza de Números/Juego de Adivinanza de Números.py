import random

def main():
    objetivo = random.randint(1, 100)
    intentos = 0
    
    print("Adivina el número entre 1 y 100.")
    
    while True:
        try:
            suposicion = int(input("Ingresa tu número: "))
            intentos += 1
            
            if suposicion < objetivo:
                print("¡Demasiado bajo! Intenta de nuevo.")
            elif suposicion > objetivo:
                print("¡Demasiado alto! Intenta de nuevo.")
            else:
                print(f"¡Correcto! Número de intentos: {intentos}.")
                break
                
        except ValueError:
            print("Error: Ingresa un número entero válido.")

if __name__ == "__main__":
    main()