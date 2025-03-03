def descomponer_factores(n):
    factores = []
    divisor = 2
    while divisor * divisor <= n:
        while n % divisor == 0:
            factores.append(divisor)
            n //= divisor
        divisor += 1
    if n > 1:
        factores.append(n)
    return factores

try:
    numero = int(input("Ingrese un número entero mayor que 1: "))
    if numero < 2:
        print("El número debe ser mayor que 1.")
    else:
        factores = descomponer_factores(numero)
        print(f"{numero} = " + " x ".join(map(str, factores)))
except ValueError:
    print("Error: Ingrese un valor entero válido.")