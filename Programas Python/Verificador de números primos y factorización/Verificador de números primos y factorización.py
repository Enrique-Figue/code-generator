def es_primo(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def factorizar(n):
    factores = []
    i = 2
    while i * i <= n:
        if n % i == 0:
            exponente = 0
            while n % i == 0:
                exponente += 1
                n = n // i
            factores.append((i, exponente))
        i += 1
    if n > 1:
        factores.append((n, 1))
    return factores

numero = int(input("Ingrese un número entero mayor a 1: "))
if numero < 2:
    print("Número no válido.")
elif es_primo(numero):
    print(f"{numero} es un número primo.")
else:
    factores = factorizar(numero)
    resultado = " * ".join([f"{f[0]}^{f[1]}" if f[1] > 1 else f"{f[0]}" for f in factores])
    print(f"Factores primos de {numero}: {resultado}")