try:
    peso = float(input("Ingrese su peso en kilogramos: "))
    altura = float(input("Ingrese su altura en metros: "))
    
    imc = peso / (altura ** 2)
    categoria = ""
    
    if imc < 18.5:
        categoria = "Bajo peso"
    elif 18.5 <= imc < 25:
        categoria = "Peso saludable"
    elif 25 <= imc < 30:
        categoria = "Sobrepeso"
    else:
        categoria = "Obesidad"
    
    print(f"\nIMC calculado: {imc:.2f}")
    print(f"Categoría: {categoria}")
    print("\nExplicación:")
    print("- IMC < 18.5: Bajo peso\n- 18.5 ≤ IMC < 25: Peso saludable\n- 25 ≤ IMC < 30: Sobrepeso\n- IMC ≥ 30: Obesidad")
    print("El IMC es una medida de referencia pero no considera composición corporal individual.")

except ValueError:
    print("Error: Ingrese valores numéricos válidos.")