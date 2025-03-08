def convertir_libras_a_kg(libras):
    return libras * 0.453592

def convertir_pulgadas_a_metros(pulgadas):
    return pulgadas * 0.0254

def calcular_imc():
    print("Calculadora de Índice de Masa Corporal (IMC)")
    
    unidad_peso = input("¿Usarás kilogramos (kg) o libras (lb)? ").lower()
    peso = float(input("Ingresa tu peso: "))
    if unidad_peso == "lb":
        peso = convertir_libras_a_kg(peso)
    
    unidad_altura = input("¿Usarás metros (m) o pulgadas (in)? ").lower()
    altura = float(input("Ingresa tu altura: "))
    if unidad_altura == "in":
        altura = convertir_pulgadas_a_metros(altura)
    
    imc = peso / (altura ** 2)
    print(f"\nTu IMC es: {imc:.1f}")
    
    if imc < 18.5:
        categoria = "Bajo peso"
    elif 18.5 <= imc < 25:
        categoria = "Peso normal"
    elif 25 <= imc < 30:
        categoria = "Sobrepeso"
    else:
        categoria = "Obesidad"
    
    print(f"Categoría: {categoria}")

if __name__ == "__main__":
    calcular_imc()