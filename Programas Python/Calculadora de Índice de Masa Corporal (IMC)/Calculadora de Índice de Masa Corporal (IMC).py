def calcular_imc(peso, altura):
    return peso / (altura ** 2)

def obtener_categoria(imc):
    if imc < 18.5:
        return "Bajo peso"
    elif 18.5 <= imc < 25:
        return "Peso normal"
    elif 25 <= imc < 30:
        return "Sobrepeso"
    else:
        return "Obesidad"

def main():
    print("Calculadora de IMC - Índice de Masa Corporal")
    
    while True:
        try:
            peso = float(input("Ingresa tu peso en kilogramos: "))
            altura = float(input("Ingresa tu altura en metros: "))
            
            if peso <= 0 or altura <= 0:
                print("Error: Ingresa valores positivos.\n")
                continue
                
            imc = calcular_imc(peso, altura)
            categoria = obtener_categoria(imc)
            
            print(f"\nTu IMC es {imc:.1f} - Categoría: {categoria}")
            
            continuar = input("\n¿Calcular otro IMC? (s/n): ").lower()
            if continuar != 's':
                print("¡Hasta luego!")
                break
            print()
            
        except ValueError:
            print("Error: Ingresa valores numéricos válidos.\n")

if __name__ == "__main__":
    main()