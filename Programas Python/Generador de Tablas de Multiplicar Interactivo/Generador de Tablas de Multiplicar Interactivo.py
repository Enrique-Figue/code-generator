def generar_tabla(numero):
    """Genera y muestra la tabla de multiplicar de un número del 1 al 10."""
    print(f"\nTabla del {numero}:")
    for i in range(1, 11):
        print(f"{i:2} x {numero} = {i * numero:3}")

def main():
    print("Generador de Tablas de Multiplicar")
    
    while True:
        try:
            entrada = input("\nIngresa un número entero (1-10) o 'salir': ").lower()
            
            if entrada == 'salir':
                print("\n¡Hasta luego!")
                break
            
            numero = int(entrada)
            
            if 1 <= numero <= 10:
                generar_tabla(numero)
            else:
                print("❌ Error: Ingresa un número entre 1 y 10")
                
        except ValueError:
            print("❌ Error: Debes ingresar un número válido o 'salir'")

if __name__ == "__main__":
    main()