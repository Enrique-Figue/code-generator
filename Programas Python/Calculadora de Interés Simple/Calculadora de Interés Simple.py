def calcular_interes_simple(principal, tasa, tiempo):
    """
    Calcula el interés simple y el monto total.
    
    Args:
        principal (float): Cantidad principal inicial.
        tasa (float): Tasa de interés anual en porcentaje (ej. 5 para 5%).
        tiempo (float): Tiempo en años.
    
    Returns:
        tuple: (Interés simple calculado, Monto total)
    """
    interes = (principal * tasa * tiempo) / 100
    monto_total = principal + interes
    return round(interes, 2), round(monto_total, 2)

if __name__ == "__main__":
    p = float(input("Ingrese el capital inicial: "))
    r = float(input("Ingrese la tasa anual (%): "))
    t = float(input("Ingrese el tiempo (años): "))
    interes, monto = calcular_interes_simple(p, r, t)
    print(f"Interés: {interes}")
    print(f"Monto total: {monto}")