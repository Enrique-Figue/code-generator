import random

def adivina_el_numero():
    numero_secreto = random.randint(1, 20)
    intentos = 0
    print("¡Adivina el número entre 1 y 20! Tienes 5 intentos.")
    
    while intentos < 5:
        try:
            guess = int(input("Ingresa tu número: "))
            intentos += 1
            
            if guess == numero_secreto:
                print(f"¡Correcto! Lo adivinaste en {intentos} intentos.")
                return
            elif guess < numero_secreto:
                print("El número es mayor.")
            else:
                print("El número es menor.")
                
        except ValueError:
            print("Por favor ingresa un número entero válido.")
    
    print(f"¡Agotaste tus intentos! El número era {numero_secreto}.")

adivina_el_numero()