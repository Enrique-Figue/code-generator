def factorial(n):
    if n < 0:
        return "No definido para números negativos"
    resultado = 1
    for i in range(1, n+1):
        resultado *= i
    return resultado

def es_primo(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def mcd(a, b):
    while b:
        a, b = b, a % b
    return a

def main():
    print("Herramienta Matemática Educativa")
    print("1. Calcular factorial de un número")
    print("2. Verificar si un número es primo")
    print("3. Calcular máximo común divisor (MCD)")
    print("4. Salir")
    
    while True:
        try:
            opcion = int(input("\nSelecciona una opción (1-4): "))
            
            if opcion == 1:
                num = int(input("Ingresa un número entero: "))
                print(f"Factorial de {num}: {factorial(num)} (n! = 1×2×...×n)")
            
            elif opcion == 2:
                num = int(input("Ingresa un número entero: "))
                primo = "es primo" if es_primo(num) else "no es primo"
                print(f"{num} {primo} (divisible solo por 1 y sí mismo)")
            
            elif opcion == 3:
                a = int(input("Ingresa primer número: "))
                b = int(input("Ingresa segundo número: "))
                print(f"MCD de {a} y {b}: {mcd(a, b)} (mayor divisor común)")
            
            elif opcion == 4:
                print("¡Hasta luego!")
                break
            
            else:
                print("Opción inválida. Introduce 1-4.")
        
        except ValueError:
            print("Entrada inválida. Introduce un número entero.")

if __name__ == "__main__":
    main()