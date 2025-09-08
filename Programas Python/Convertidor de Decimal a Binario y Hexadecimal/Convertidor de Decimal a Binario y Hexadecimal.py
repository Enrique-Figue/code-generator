def convertidor_decimal():
    print("¡Bienvenido al convertidor decimal!")
    print("Ingresa números enteros para ver su representación en binario y hexadecimal.")
    print("Ingresa 'salir' para terminar el programa.\n")

    while True:
        entrada = input("Número decimal (o 'salir'): ").strip().lower()
        
        if entrada == "salir":
            print("¡Hasta luego!")
            break
        
        try:
            numero = int(entrada)
            binario = bin(numero)
            hexadecimal = hex(numero)
            
            print(f"\nDecimal: {numero}")
            print(f"Binario: {binario} (prefijo 0b)")
            print(f"Hexadecimal: {hexadecimal} (prefijo 0x)")
            print("---\n")
            
        except ValueError:
            print("⚠️ Error: Ingresa un número entero válido\n")

if __name__ == "__main__":
    convertidor_decimal()