import random

def validar_entrada(mensaje):
    while True:
        try:
            numero = int(input(mensaje))
            if 1 <= numero <= 10:
                return numero
            else:
                print("¡Ingresa un número entre 1 y 10!")
        except ValueError:
            print("¡Entrada inválida! Ingresa un número entero.")

def main():
    print("¡Practica Tablas de Multiplicar!")
    print("Elige un número y responde las preguntas.\n")
    numero = validar_entrada("Ingresa un número entre 1 y 10: ")
    
    multiplicadores = list(range(1, 11))
    random.shuffle(multiplicadores)
    aciertos = 0
    
    for m in multiplicadores:
        respuesta = input(f"¿Cuánto es {numero} x {m}? ")
        try:
            if int(respuesta) == numero * m:
                print("¡Correcto!\n")
                aciertos += 1
            else:
                print(f"Incorrecto. La respuesta es {numero * m}.\n")
        except:
            print(f"¡Ingresa un número válido! La respuesta es {numero * m}.\n")
    
    print(f"Resultados: {aciertos}/10 respuestas correctas ({aciertos*10}%)")

if __name__ == "__main__":
    main()