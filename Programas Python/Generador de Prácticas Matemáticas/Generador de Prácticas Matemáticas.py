import random

def main():
    print("¡Bienvenido al Generador de Prácticas Matemáticas!")
    num_problemas = int(input("¿Cuántos problemas deseas resolver? "))
    operadores = ['+', '-', '*']
    correctos = 0

    for _ in range(num_problemas):
        a = random.randint(1, 10)
        b = random.randint(1, 10)
        op = random.choice(operadores)
        
        if op == '+':
            respuesta = a + b
        elif op == '-':
            respuesta = a - b
        else:
            respuesta = a * b

        try:
            usuario_resp = int(input(f"{a} {op} {b} = ? "))
            if usuario_resp == respuesta:
                print("¡Correcto!")
                correctos += 1
            else:
                print(f"Incorrecto. La respuesta es {respuesta}.")
        except ValueError:
            print("Entrada inválida. Usa números enteros.")

    print(f"\nResultado: {correctos} de {num_problemas} correctos.")

if __name__ == "__main__":
    main()