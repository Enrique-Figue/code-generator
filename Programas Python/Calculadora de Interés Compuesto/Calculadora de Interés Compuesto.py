# Solicitar datos al usuario
capital_inicial = float(input("Ingrese el capital inicial: "))
tasa_anual = float(input("Ingrese la tasa de interés anual (%): ")) / 100
periodos_anual = int(input("Ingrese número de periodos de capitalización por año: "))
anios = int(input("Ingrese años de inversión: "))

# Calcular y mostrar crecimiento anual
print("\nProyección de crecimiento compuesto:")
for año in range(1, anios + 1):
    monto = capital_inicial * (1 + tasa_anual / periodos_anual) ** (periodos_anual * año)
    print(f"Año {año}: ${monto:.2f}")

# Mostrar resultado final
total = capital_inicial * (1 + tasa_anual / periodos_anual) ** (periodos_anual * anios)
print(f"\nMonto final después de {anios} años: ${total:.2f}")