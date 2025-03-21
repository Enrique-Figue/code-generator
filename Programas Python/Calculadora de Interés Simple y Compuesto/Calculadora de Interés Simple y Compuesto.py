try:
    principal = float(input("Monto principal ($): "))
    tasa_anual = float(input("Tasa de interés anual (%): "))
    años = int(input("Período en años: "))
    
    if principal <= 0 or tasa_anual <= 0 or años <= 0:
        raise ValueError("Los valores deben ser positivos")
    
    interes_simple = principal * (tasa_anual / 100) * años
    monto_compuesto = principal * ((1 + (tasa_anual / 100)) ** años)
    
    print("\nResultados:")
    print(f"- Interés simple: ${interes_simple + principal:.2f} (Interés: ${interes_simple:.2f})")
    print(f"- Interés compuesto: ${monto_compuesto:.2f} (Ganancias: ${monto_compuesto - principal:.2f})")
    print("\nComparación final:")
    print(f"Total diferencia: ${monto_compuesto - (principal + interes_simple):.2f}")

except ValueError as e:
    print(f"Error: {e}. Ingrese números válidos y positivos.")