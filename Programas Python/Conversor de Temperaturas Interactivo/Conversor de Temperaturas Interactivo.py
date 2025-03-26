def main():
    print("Conversor de Temperaturas (C, F, K)")
    while True:
        try:
            valor = float(input("\nIngrese la temperatura: "))
            origen = input("Unidad origen (C/F/K): ").upper()
            destino = input("Unidad destino (C/F/K): ").upper()

            unidades_validas = {'C', 'F', 'K'}
            if origen not in unidades_validas or destino not in unidades_validas:
                print("Error: Unidad no válida. Use C, F o K.")
                continue

            # Conversiones a Celsius
            if origen == 'C':
                temp_c = valor
            elif origen == 'F':
                temp_c = (valor - 32) * 5/9
            elif origen == 'K':
                temp_c = valor - 273.15

            # Conversiones desde Celsius
            if destino == 'C':
                resultado = temp_c
            elif destino == 'F':
                resultado = (temp_c * 9/5) + 32
            elif destino == 'K':
                resultado = temp_c + 273.15

            print(f"\n{valor}°{origen} = {resultado:.2f}°{destino}")

            if input("\n¿Otra conversión? (s/n): ").lower() != 's':
                print("¡Hasta luego!")
                break

        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

if __name__ == "__main__":
    main()