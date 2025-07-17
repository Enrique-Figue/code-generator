import random

print("¡Adivina el número!")
print("Elige la dificultad:")
print("1: Fácil (1-10)\n2: Medio (1-50)\n3: Difícil (1-100)")

while True:
    try:
        nivel = int(input("Ingresa el nivel (1-3): "))
        if 1 <= nivel <= 3:
            break
        print("¡Opción inválida! Elige 1, 2 o 3")
    except ValueError:
        print("¡Entrada no válida! Introduce un número")

rangos = {1: 10, 2: 50, 3: 100}
max_num = rangos[nivel]
secreto = random.randint(1, max_num)
intentos = 0

print(f"\nAdivina un número entre 1 y {max_num}. ¡Tienes 10 intentos!")

for _ in range(10):
    try:
        intentos += 1
        guess = int(input("Tu intento: "))
        
        if guess < 1 or guess > max_num:
            print(f"El número está entre 1 y {max_num}")
            continue
            
        if guess == secreto:
            print(f"¡Correcto! Lo adivinaste en {intentos} intentos")
            break
        elif guess < secreto:
            print("El número es mayor")
        else:
            print("El número es menor")
            
    except ValueError:
        print("Debes ingresar un número entero")
        intentos -= 1
        
    if _ == 9:
        print(f"\n¡Agotaste tus intentos! El número era {secreto}")