def es_primo(n):
    """Determina si un número es primo y retorna el divisor relevante si no lo es."""
    if n <= 1:
        return (False, None)
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return (False, i)
    return (True, None)

while True:
    try:
        entrada = input("\nIngrese un número entero positivo (o negativo para salir): ").strip()
        num = int(entrada)
        if num < 0:
            print("Saliendo del programa.")
            break
        
        primo, divisor = es_primo(num)
        
        if primo:
            print(f"⭐ {num} ES PRIMO. No tiene divisores distintos de 1 y sí mismo.")
        else:
            if num == 0:
                print("❌ 0 NO ES PRIMO (los primos son mayores que 1).")
            elif num == 1:
                print("❌ 1 NO ES PRIMO por definición matemática.")
            else:
                print(f"❌ {num} NO ES PRIMO. Mínimo divisor encontrado: {divisor}")
                
    except ValueError:
        print("❓¡Entrada inválida! Ingrese solo números enteros.")