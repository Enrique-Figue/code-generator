def calcular_promedio(notas):
    if len(notas) == 0:
        return 0
    return sum(notas) / len(notas)

def main():
    print("Calculadora de promedio de calificaciones")
    notas = []
    
    while True:
        entrada = input("Ingrese una nota (o 'fin' para terminar): ")
        if entrada.lower() == 'fin':
            break
        try:
            nota = float(entrada)
            notas.append(nota)
        except ValueError:
            print("¡Error! Ingrese un número válido.")
    
    if notas:
        promedio = calcular_promedio(notas)
        print(f"\nCantidad de notas ingresadas: {len(notas)}")
        print(f"Promedio calculado: {promedio:.2f}")
    else:
        print("\nNo se ingresaron notas válidas")

if __name__ == "__main__":
    main()