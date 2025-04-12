def calcular_pago_mensual(monto, tasa_anual, años):
    tasa_mensual = tasa_anual / 12 / 100
    meses = años * 12
    pago = (monto * tasa_mensual * (1 + tasa_mensual)**meses) / ((1 + tasa_mensual)**meses - 1)
    return pago

def generar_tabla_amortizacion(monto, tasa_anual, años):
    tasa_mensual = tasa_anual / 12 / 100
    meses = años * 12
    pago = calcular_pago_mensual(monto, tasa_anual, años)
    saldo = monto

    print("\nTabla de amortización:")
    print("Mes | Pago | Interés | Principal | Saldo")
    print("-"*45)
    
    for mes in range(1, meses + 1):
        interes = saldo * tasa_mensual
        principal = pago - interes
        saldo -= principal
        
        if mes <= 3 or mes == meses:
            print(f"{mes:3} | ${pago:.2f} | ${interes:.2f} | ${principal:.2f} | ${saldo:.2f}")
        elif mes == 4:
            print("... | ... | ... | ... | ...")

def main():
    try:
        monto = float(input("Monto del préstamo: $"))
        tasa = float(input("Tasa de interés anual (%): "))
        años = int(input("Plazo (años): "))
        
        if monto <= 0 or tasa <= 0 or años <= 0:
            raise ValueError("Todos los valores deben ser positivos")
            
        pago_mensual = calcular_pago_mensual(monto, tasa, años)
        print(f"\nPago mensual: ${pago_mensual:.2f}")
        generar_tabla_amortizacion(monto, tasa, años)
        
    except ValueError as e:
        print(f"Error: {e}. Ingrese valores numéricos válidos.")

if __name__ == "__main__":
    main()