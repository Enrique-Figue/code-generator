def decimal_a_binario_manual(numero):
    if numero == 0:
        return "0"
    binario = []
    while numero > 0:
        binario.append(str(numero % 2))
        numero = numero // 2
    return "".join(reversed(binario))

def main():
    print("Conversor Decimal a Binario/Octal/Hexadecimal")
    while True:
        entrada = input("Ingrese un número entero positivo (o 'salir' para terminar): ")
        if entrada.lower() == "salir":
            print("¡Hasta luego!")
            break
        
        try:
            numero = int(entrada)
            if numero < 0:
                raise ValueError
        except ValueError:
            print("Error: Ingrese un número entero positivo válido.\n")
            continue
            
        print(f"\nDecimal: {numero}")
        print(f"Binario (funcion): {bin(numero)}")
        print(f"Binario (manual):  {decimal_a_binario_manual(numero)}")
        print(f"Octal: {oct(numero)}")
        print(f"Hex: {hex(numero)}\n")

if __name__ == "__main__":
    main()