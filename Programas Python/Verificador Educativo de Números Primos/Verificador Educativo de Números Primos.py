def es_primo(numero):
    """Determina si un número es primo y retorna sus divisores."""
    if numero < 2:
        return False, []
    divisores = [1]
    for i in range(2, int(numero**0.5) + 1):
        if numero % i == 0:
            divisores.extend([i, numero//i] if i != numero//i else [i])
    divisores.append(numero)
    divisores = sorted(list(set(divisores)))
    return len(divisores) == 2, divisores

def main():
    print("Verificador Educativo de Números Primos")
    while True:
        entrada = input("\nIngrese un número entero positivo (o 'salir'): ").strip()
        if entrada.lower() == 'salir':
            print("¡Hasta luego!")
            break
        
        try:
            n = int(entrada)
            if n < 1:
                raise ValueError
        except:
            print("❌ Error: Ingrese un número entero positivo válido")
            continue
            
        primo, divisores = es_primo(n)
        print(f"\n🔍 Análisis de {n}:")
        print(f"Divisores encontrados: {', '.join(map(str, divisores))}")
        print(f"Total divisores: {len(divisores)}")
        
        if primo:
            print("✅ CONCLUSIÓN: Es PRIMO (solo tiene dos divisores)")
        else:
            print("❌ CONCLUSIÓN: NO es primo (tiene más de dos divisores)")

if __name__ == "__main__":
    main()