import time

def fib_recursivo(n):
    """Calcula el n-ésimo término de Fibonacci usando recursión."""
    if n <= 1:
        return n
    return fib_recursivo(n-1) + fib_recursivo(n-2)

def fib_iterativo(n):
    """Calcula el n-ésimo término de Fibonacci usando iteración."""
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

print("¡Bienvenido al comparador de métodos de Fibonacci!")
print("Este programa calcula el n-ésimo término usando recursión e iteración,")
print("y muestra el tiempo de ejecución de cada método.\n")

while True:
    try:
        n = int(input("Ingrese un número entero positivo (o 0 para salir): "))
        if n < 0:
            raise ValueError
        if n == 0:
            print("¡Hasta luego!")
            break
            
        # Método recursivo
        inicio = time.time()
        res_rec = fib_recursivo(n)
        tiempo_rec = time.time() - inicio
        
        # Método iterativo
        inicio = time.time()
        res_iter = fib_iterativo(n)
        tiempo_iter = time.time() - inicio
        
        print(f"\nFibonacci({n}):")
        print(f"Recursivo: {res_rec} (Tiempo: {tiempo_rec:.6f} segundos)")
        print(f"Iterativo: {res_iter} (Tiempo: {tiempo_iter:.6f} segundos)")
        print("-" * 50)
        
    except ValueError:
        print("Error: Por favor ingrese un número entero no negativo válido.\n")