def calcular_interes_simple(principal, tasa, tiempo):
    """
    Calcula el interés simple y el monto total.
    
    Args:
        principal (float): Cantidad principal inicial.
        tasa (float): Tasa de interés anual en porcentaje.
        tiempo (float): Tiempo en años.
    
    Returns:
        tuple: (interes, monto_total) redondeados a 2 decimales.
    """
    tasa_decimal = tasa / 100
    interes = principal * tasa_decimal * tiempo
    monto_total = principal + interes
    return round(interes, 2), round(monto_total, 2)

if __name__ == "__main__":
    p = float(input("Ingrese el capital inicial: "))
    r = float(input("Ingrese la tasa anual (%): "))
    t = float(input("Ingrese el tiempo (años): "))
    
    interes, total = calcular_interes_simple(p, r, t)
    
    print(f"\nInterés generado: ${interes:.2f}")
    print(f"Monto total: ${total:.2f}")