try:
    peso = float(input("Ingrese su peso en kilogramos: "))
    altura = float(input("Ingrese su altura en metros: "))
    imc = peso / (altura ** 2)
    print(f"Su IMC es {imc:.2f}")
    
    if imc < 18.5:
        categoria = "Bajo peso"
    elif 18.5 <= imc < 25:
        categoria = "Peso normal"
    elif 25 <= imc < 30:
        categoria = "Sobrepeso"
    else:
        categoria = "Obesidad"
    print(f"Categoría: {categoria}")

except ValueError:
    print("Error: Ingrese valores numéricos válidos.")