def calcular_mcd(a, b):
    """Calcula el máximo común divisor usando el algoritmo de Euclides."""
    while b:
        a, b = b, a % b
    return a

if __name__ == "__main__":
    print("Calculadora de MCD (Máximo Común Divisor)")
    
    try:
        num1 = int(input("Ingrese el primer número entero positivo: "))
        num2 = int(input("Ingrese el segundo número entero positivo: "))
        
        if num1 <= 0 or num2 <= 0:
            raise ValueError("Los números deben ser enteros positivos")
            
        resultado = calcular_mcd(num1, num2)
        print(f"\nEl MCD de {num1} y {num2} es: {resultado}")
        
    except ValueError as e:
        print(f"\nError: {e}. Por favor ingrese números enteros válidos.")