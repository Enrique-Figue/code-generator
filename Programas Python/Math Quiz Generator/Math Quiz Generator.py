import random

def main():
    print("Math Quiz Generator")
    print("Operaciones disponibles:")
    print("1. Suma (+)")
    print("2. Resta (-)")
    print("3. Multiplicación (×)")
    print("4. División (÷)")
    
    opcion = input("Elige una operación (1-4): ")
    while opcion not in ['1', '2', '3', '4']:
        opcion = input("Opción inválida. Elige una operación (1-4): ")
    
    total_preguntas = 5
    puntaje = 0
    
    for _ in range(total_preguntas):
        if opcion == '1':
            a = random.randint(1, 20)
            b = random.randint(1, 20)
            pregunta = f"{a} + {b} = "
            correcto = a + b
        elif opcion == '2':
            a = random.randint(1, 20)
            b = random.randint(1, a)
            pregunta = f"{a} - {b} = "
            correcto = a - b
        elif opcion == '3':
            a = random.randint(1, 10)
            b = random.randint(1, 10)
            pregunta = f"{a} × {b} = "
            correcto = a * b
        elif opcion == '4':
            b = random.randint(1, 10)
            cociente = random.randint(1, 10)
            a = b * cociente
            pregunta = f"{a} ÷ {b} = "
            correcto = cociente
        
        respuesta_usuario = input(pregunta)
        try:
            respuesta = float(respuesta_usuario)
            if respuesta == correcto:
                print("¡Correcto!")
                puntaje +=1
            else:
                print(f"Incorrecto. La respuesta correcta es {correcto}.")
        except ValueError:
            print(f"Entrada inválida. La respuesta correcta es {correcto}.")
    
    print(f"Quiz terminado. Puntaje: {puntaje}/{total_preguntas}")

if __name__ == "__main__":
    main()