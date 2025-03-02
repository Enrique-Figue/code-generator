def ingresar_notas():
    notas = []
    while True:
        entrada = input("Ingresa una nota (0-100) o 'fin' para terminar: ")
        if entrada.lower() == 'fin':
            break
        try:
            nota = float(entrada)
            if 0 <= nota <= 100:
                notas.append(nota)
            else:
                print("Error: La nota debe estar entre 0 y 100")
        except ValueError:
            print("Error: Ingresa un número válido")
    return notas

def calcular_promedio(notas):
    return sum(notas) / len(notas) if notas else 0.0

def determinar_mensaje(promedio):
    if promedio >= 90:
        return "Excelente desempeño"
    elif promedio >= 80:
        return "Buen trabajo"
    elif promedio >= 70:
        return "Aprobado satisfactoriamente"
    else:
        return "Necesitas mejorar"

def main():
    print("Calculadora de Promedio Escolar\n")
    notas = ingresar_notas()
    if notas:
        promedio = calcular_promedio(notas)
        print(f"\nPromedio: {promedio:.2f}")
        print(determinar_mensaje(promedio))
    else:
        print("No se ingresaron notas")

if __name__ == "__main__":
    main()