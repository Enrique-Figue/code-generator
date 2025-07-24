def es_primo(numero):
    """Determina si un número es primo y muestra sus divisores."""
    if numero < 2:
        return False, []
    divisores = [1]
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            divisores.extend([i, numero//i])
    divisores.append(numero)
    divisores = list(set(divisores))
    divisores.sort()
    return len(divisores) == 2, divisores

while True:
    entrada = input("Ingrese un número entero positivo (o 'salir' para terminar): ")
    if entrada.lower() == 'salir':
        print("¡Hasta luego!")
        break
    try:
        num = int(entrada)
        if num < 1:
            print("Por favor ingrese un número positivo.\n")
            continue
        primo, divisores = es_primo(num)
        print(f"Divisores de {num}: {divisores}")
        print(f"¿Es primo? {'Sí' if primo else 'No'}\n")
    except ValueError:
        print("Entrada no válida. Intente nuevamente.\n")