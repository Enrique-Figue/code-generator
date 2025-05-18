peso = float(input("Ingrese su peso en kilogramos: "))
altura = float(input("Ingrese su altura en metros: "))
imc = peso / (altura ** 2)

if imc < 18.5:
    categoria = "Bajo peso"
elif 18.5 <= imc < 25:
    categoria = "Peso normal"
elif 25 <= imc < 30:
    categoria = "Sobrepeso"
else:
    categoria = "Obesidad"

print(f"\nSu IMC es: {imc:.2f}")
print(f"Categoría: {categoria}")