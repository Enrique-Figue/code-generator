def calcular_imc():
    """Calcula el Índice de Masa Corporal (IMC) y muestra la categoría correspondiente."""
    try:
        peso = float(input("Ingrese su peso en kilogramos: "))
        altura = float(input("Ingrese su altura en metros: "))
        
        if peso <= 0 or altura <= 0:
            raise ValueError("Los valores deben ser positivos")
            
        imc = peso / (altura ** 2)
        print(f"\nSu IMC es: {imc:.1f}")
        
        if imc < 18.5:
            categoria = "Bajo peso"
        elif 18.5 <= imc < 25:
            categoria = "Peso normal"
        elif 25 <= imc < 30:
            categoria = "Sobrepeso"
        else:
            categoria = "Obesidad"
            
        print(f"Categoría: {categoria}")
        
    except ValueError as e:
        print(f"Error: {e}. Ingrese valores numéricos válidos")

if __name__ == "__main__":
    calcular_imc()