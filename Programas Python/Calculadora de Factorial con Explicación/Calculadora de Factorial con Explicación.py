def calcular_factorial(n):
    if n < 0:
        raise ValueError("El factorial no está definido para números negativos.")
    resultado = 1
    proceso = []
    for i in range(1, n + 1):
        resultado *= i
        proceso.append(f"{i}! = {resultado}")
    return resultado, proceso

try:
    numero = int(input("Ingrese un número entero no negativo: "))
    resultado, pasos = calcular_factorial(numero)
    
    print("\nProceso de cálculo:")
    for paso in pasos:
        print(paso)
    print(f"\nEl factorial de {numero} es: {resultado}")
    
except ValueError as e:
    if "invalid literal" in str(e):
        print("Error: Por favor ingrese un número entero válido.")
    else:
        print(f"Error: {e}")