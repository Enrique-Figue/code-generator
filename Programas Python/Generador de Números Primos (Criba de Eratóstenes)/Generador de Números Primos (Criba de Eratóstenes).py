def criba_eratostenes(limite):
    # Crea una lista de booleanos para marcar números primos
    numeros = [True] * (limite + 1)
    numeros[0] = numeros[1] = False  # 0 y 1 no son primos
    
    for numero in range(2, int(limite**0.5) + 1):
        if numeros[numero]:
            # Marca múltiplos del número actual como no primos
            for multiplo in range(numero*numero, limite+1, numero):
                numeros[multiplo] = False
    
    # Retorna lista de números primos hasta el límite
    return [i for i, es_primo in enumerate(numeros) if es_primo]

if __name__ == "__main__":
    try:
        n = int(input("Ingrese un número entero mayor a 1: "))
        if n < 2:
            raise ValueError
        primos = criba_eratostenes(n)
        print(f"Números primos hasta {n}: {primos}")
            
    except ValueError:
        print("¡Error! Debes ingresar un número entero válido mayor a 1.")