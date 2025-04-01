def calcular_interes_compuesto():
    try:
        # Solicitar datos al usuario
        principal = float(input("Capital inicial (€): "))
        tasa_anual = float(input("Tasa de interés anual (%): "))
        años = int(input("Años de inversión: "))
        frecuencia = int(input("Capitalizaciones por año: "))
        
        # Validar valores positivos
        if principal <= 0 or tasa_anual <= 0 or años <= 0 or frecuencia <= 0:
            raise ValueError("Todos los valores deben ser positivos")
        
        tasa_decimal = tasa_anual / 100
        monto_total = principal
        periodo_por_año = frecuencia
        
        print("\nAño | Monto Acumulado")
        print("-" * 25)
        
        # Calcular y mostrar crecimiento por año
        for año in range(1, años + 1):
            monto_total *= (1 + tasa_decimal / frecuencia) ** frecuencia
            print(f"{año:3d} | €{monto_total:,.2f}")
            
    except ValueError as e:
        print(f"Error: {e}. Introduce valores numéricos válidos.")

if __name__ == "__main__":
    calcular_interes_compuesto()