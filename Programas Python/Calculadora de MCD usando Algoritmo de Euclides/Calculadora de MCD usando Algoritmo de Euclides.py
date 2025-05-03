def calcular_mcd(a, b):
    while b != 0:
        a, b = b, a % b
    return abs(a)

if __name__ == "__main__":
    try:
        num1 = int(input("Ingrese el primer número: "))
        num2 = int(input("Ingrese el segundo número: "))
        mcd = calcular_mcd(num1, num2)
        print(f"\nEl Máximo Común Divisor entre {num1} y {num2} es: {mcd}")
        print("Nota: El cálculo usa el algoritmo de Euclides, que divide repetidamente")
        print("el número mayor por el menor hasta que el residuo sea cero.")
    except ValueError:
        print("Error: Por favor ingrese números enteros válidos.")