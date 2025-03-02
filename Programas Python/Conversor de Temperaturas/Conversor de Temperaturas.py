def celsius_a_fahrenheit(c):
    return c * 9/5 + 32

def celsius_a_kelvin(c):
    return c + 273.15

def fahrenheit_a_celsius(f):
    return (f - 32) * 5/9

def fahrenheit_a_kelvin(f):
    return (f - 32) * 5/9 + 273.15

def kelvin_a_celsius(k):
    return k - 273.15

def kelvin_a_fahrenheit(k):
    return (k - 273.15) * 9/5 + 32

def mostrar_menu():
    print("\nOpciones disponibles:")
    print("1. Celsius a Fahrenheit")
    print("2. Celsius a Kelvin")
    print("3. Fahrenheit a Celsius")
    print("4. Fahrenheit a Kelvin")
    print("5. Kelvin a Celsius")
    print("6. Kelvin a Fahrenheit")
    print("7. Salir")
    
    while True:
        try:
            opcion = int(input("Selecciona una opción (1-7): "))
            if 1 <= opcion <= 7:
                return opcion
            else:
                print("Por favor ingresa un número entre 1 y 7.")
        except ValueError:
            print("Entrada inválida. Ingresa un número entero.")

def main():
    while True:
        opcion = mostrar_menu()
        
        if opcion == 7:
            print("¡Hasta luego!")
            break
            
        escalas = {
            1: ("Celsius", "Fahrenheit", celsius_a_fahrenheit),
            2: ("Celsius", "Kelvin", celsius_a_kelvin),
            3: ("Fahrenheit", "Celsius", fahrenheit_a_celsius),
            4: ("Fahrenheit", "Kelvin", fahrenheit_a_kelvin),
            5: ("Kelvin", "Celsius", kelvin_a_celsius),
            6: ("Kelvin", "Fahrenheit", kelvin_a_fahrenheit)
        }
        
        entrada, salida, funcion = escalas[opcion]
        
        while True:
            try:
                valor = float(input(f"Ingresa la temperatura en {entrada}: "))
                resultado = funcion(valor)
                print(f"{valor} °{entrada[0]} = {resultado:.2f} °{salida[0]}")
                break
            except ValueError:
                print("Error: Ingresa un valor numérico válido.")

if __name__ == "__main__":
    main()