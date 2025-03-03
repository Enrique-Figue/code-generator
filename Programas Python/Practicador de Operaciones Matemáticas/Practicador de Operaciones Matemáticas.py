import random

def generar_numeros(operacion):
    num1 = random.randint(1, 100)
    num2 = random.randint(1, 100)
    if operacion == '/':
        while num2 == 0 or num1 % num2 != 0:
            num1 = random.randint(1, 100)
            num2 = random.randint(1, 100)
    return num1, num2

def practicar_operacion(operacion):
    aciertos = 0
    intentos = 0
    
    while True:
        num1, num2 = generar_numeros(operacion)
        operador = {'+': 'suma', '-': 'resta', '*': 'multiplicación', '/': 'división'}[operacion]
        
        print(f"\n¿Cuánto es {num1} {operacion} {num2}?")
        try:
            respuesta = float(input("Tu respuesta: "))
        except ValueError:
            print("Por favor ingresa un número válido.")
            continue
        
        intentos += 1
        if operacion == '+':
            correcto = num1 + num2
        elif operacion == '-':
            correcto = num1 - num2
        elif operacion == '*':
            correcto = num1 * num2
        else:
            correcto = num1 // num2
        
        if respuesta == correcto:
            aciertos += 1
            print("¡Correcto! 🎉")
        else:
            print(f"Incorrecto. La respuesta es {correcto}")
        
        continuar = input("¿Practicar otra? (s/n): ").lower()
        if continuar != 's':
            break
    
    print(f"\nResumen: {aciertos} aciertos de {intentos} intentos")

def main():
    print("Bienvenido al Practicador Matemático")
    print("1: Suma\n2: Resta\n3: Multiplicación\n4: División\n5: Salir")
    
    while True:
        opcion = input("Elige una operación (1-5): ")
        if opcion == '5':
            print("¡Hasta luego!")
            break
        elif opcion in {'1', '2', '3', '4'}:
            operaciones = {'1': '+', '2': '-', '3': '*', '4': '/'}
            practicar_operacion(operaciones[opcion])
        else:
            print("Opción inválida. Intenta nuevamente.")

if __name__ == "__main__":
    main()