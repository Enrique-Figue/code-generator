def mostrar_bienvenida():
    print("Bienvenido al Quiz de Cultura General")
    print("Responde las siguientes preguntas seleccionando A, B, C o D.\n")

def ejecutar_quiz(preguntas):
    puntaje = 0
    for pregunta in preguntas:
        print(pregunta["question"])
        for i, opcion in enumerate(pregunta["options"]):
            print(f"{chr(65 + i)}) {opcion}")
        respuesta = input("\nTu respuesta: ").strip().upper()
        if respuesta in ["A", "B", "C", "D"]:
            indice_respuesta = ord(respuesta) - ord('A')
            if indice_respuesta == pregunta["answer"]:
                print("¡Correcto!\n")
                puntaje += 1
            else:
                print(f"Incorrecto. La respuesta correcta es {chr(65 + pregunta['answer'])})\n")
        else:
            print("Respuesta inválida. Por favor, usa A, B, C o D.\n")
    return puntaje

def mostrar_resultado(puntaje, total):
    porcentaje = (puntaje / total) * 100
    print(f"\nPuntuación final: {puntaje}/{total} ({porcentaje:.1f}%)")
    if porcentaje == 100:
        print("¡Perfecto! ¡Eres un experto!")
    elif porcentaje >= 75:
        print("¡Muy bien hecho!")
    elif porcentaje >= 50:
        print("¡Buen intento!")
    else:
        print("¡Sigue practicando!")

preguntas = [
    {
        "question": "¿Cuál es el planeta más grande del sistema solar?",
        "options": ["Tierra", "Marte", "Júpiter", "Saturno"],
        "answer": 2
    },
    {
        "question": "¿Quién pintó 'La última cena'?",
        "options": ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Michelangelo"],
        "answer": 2
    },
    {
        "question": "¿Cuál es el resultado de 5 x (3 + 2)?",
        "options": ["10", "15", "20", "25"],
        "answer": 3
    },
    {
        "question": "¿En qué año llegó el hombre a la Luna?",
        "options": ["1965", "1969", "1972", "1980"],
        "answer": 1
    }
]

if __name__ == "__main__":
    mostrar_bienvenida()
    puntaje_final = ejecutar_quiz(preguntas)
    mostrar_resultado(puntaje_final, len(preguntas))