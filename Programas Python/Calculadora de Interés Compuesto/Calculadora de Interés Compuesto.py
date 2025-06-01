def calcular_interes_compuesto():
    # Solicitar datos al usuario
    principal = float(input("Ingrese el capital inicial (P): "))
    tasa_anual = float(input("Ingrese la tasa de interés anual (r%): ")) / 100
    años = int(input("Ingrese el número de años (t): "))
    frecuencia = int(input("Capitalización por año (n): "))

    # Calcular interés compuesto
    monto = principal * (1 + tasa_anual / frecuencia) ** (frecuencia * años)
    interes = monto - principal

    # Mostrar resultados
    print(f"\nMonto final después de {años} años: ${monto:.2f}")
    print(f"Interés ganado: ${interes:.2f}")

if __name__ == "__main__":
    try:
        calcular_interes_compuesto()
    except ValueError:
        print("Error: Ingrese valores numéricos válidos")