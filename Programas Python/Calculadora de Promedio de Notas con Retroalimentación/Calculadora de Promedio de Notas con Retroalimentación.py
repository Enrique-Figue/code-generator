def main():
    notas = []
    while True:
        entrada = input("Ingrese una nota (0-100) o 'fin' para calcular: ")
        if entrada.lower() == 'fin':
            break
        try:
            nota = float(entrada)
            if 0 <= nota <= 100:
                notas.append(nota)
            else:
                print("Error: La nota debe estar entre 0 y 100")
        except ValueError:
            print("Entrada inválida. Intente nuevamente.")
    
    if notas:
        promedio = sum(notas)/len(notas)
        print(f"\nPromedio: {promedio:.2f}")
        if promedio >= 90:
            mensaje = "Excelente desempeño"
        elif promedio >= 70:
            mensaje = "Buen trabajo"
        else:
            mensaje = "Necesitas mejorar"
        print(f"Retroalimentación: {mensaje}")
    else:
        print("\nNo se ingresaron notas válidas")

if __name__ == "__main__":
    main()