def calcular_prestamo():
    # Solicitar datos de entrada al usuario
    monto = float(input("Ingrese el monto del préstamo: "))
    tasa_anual = float(input("Ingrese la tasa de interés anual (%): ")) / 100
    años = int(input("Ingrese el plazo en años: "))
    
    # Calcular variables mensuales
    tasa_mensual = tasa_anual / 12
    meses = años * 12
    
    # Calcular pago mensual usando fórmula de amortización
    pago_mensual = (monto * tasa_mensual * (1 + tasa_mensual)**meses) / ((1 + tasa_mensual)**meses - 1)
    
    # Mostrar resumen principal
    print(f"\nPago mensual: ${pago_mensual:.2f}")
    print(f"\nDetalle de amortización (primeros 3 meses):")
    
    # Calcular y mostrar tabla de amortización
    saldo_restante = monto
    for mes in range(1, 4):
        interes_mensual = saldo_restante * tasa_mensual
        principal_mensual = pago_mensual - interes_mensual
        saldo_restante -= principal_mensual
        
        print(f"\nMes {mes}:")
        print(f"Interés: ${interes_mensual:.2f}")
        print(f"Capital: ${principal_mensual:.2f}")
        print(f"Saldo pendiente: ${saldo_restante:.2f}")

    # Mostrar información educativa
    print("\n[Didáctico] Este cálculo muestra cómo tu pago se divide entre intereses y capital:")
    print("- Al inicio, la mayor parte es interés")
    print("- Con el tiempo, la porción de capital aumenta")
    print("- El interés se calcula siempre sobre el saldo pendiente")

if __name__ == "__main__":
    calcular_prestamo()