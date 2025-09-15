capitales = {
    "Francia": "París",
    "Japón": "Tokio",
    "Italia": "Roma",
    "Brasil": "Brasilia",
    "Australia": "Canberra"
}

puntaje = 0

print("¡Bienvenido al Quiz de Capitales!")
print("Responde con la capital correcta para cada país:\n")

for pais, capital in capitales.items():
    respuesta = input(f"Capital de {pais}: ").strip().title()
    
    if respuesta == capital:
        print("¡Correcto!\n")
        puntaje += 1
    else:
        print(f"Incorrecto. La respuesta correcta es: {capital}\n")

total = len(capitales)
porcentaje = (puntaje / total) * 100

print(f"Puntaje final: {puntaje}/{total}")
print(f"Porcentaje de aciertos: {porcentaje:.1f}%")