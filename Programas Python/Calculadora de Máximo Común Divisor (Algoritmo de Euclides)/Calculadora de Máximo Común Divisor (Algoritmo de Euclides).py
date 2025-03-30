def euclides_mcd(a, b):
    """Calcula el MCD de dos números usando el algoritmo de Euclides."""
    while b != 0:
        a, b = b, a % b
    return a

try:
    num1 = int(input("Ingrese el primer número entero positivo: "))
    num2 = int(input("Ingrese el segundo número entero positivo: "))
    
    if num1 <= 0 or num2 <= 0:
        raise ValueError("Los números deben ser enteros positivos.")
    
    resultado = euclides_mcd(num1, num2)
    print(f"El MCD de {num1} y {num2} es: {resultado}")

except ValueError as e:
    print(f"Error: {e}. Asegúrese de ingresar números enteros positivos.")