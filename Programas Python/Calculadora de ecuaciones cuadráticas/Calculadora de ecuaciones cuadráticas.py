import math

def calcular_raices(a, b, c):
    discriminante = b**2 - 4*a*c
    if discriminante > 0:
        raiz1 = (-b + math.sqrt(discriminante)) / (2*a)
        raiz2 = (-b - math.sqrt(discriminante)) / (2*a)
        return f"Raíces reales: {raiz1:.2f} y {raiz2:.2f}"
    elif discriminante == 0:
        raiz = -b / (2*a)
        return f"Raíz real doble: {raiz:.2f}"
    else:
        real = -b / (2*a)
        imag = math.sqrt(-discriminante) / (2*a)
        return f"Raíces complejas: {real:.2f} + {imag:.2f}i y {real:.2f} - {imag:.2f}i"

try:
    print("Calculadora de ax² + bx + c = 0")
    a = float(input("Ingrese coeficiente a: "))
    b = float(input("Ingrese coeficiente b: "))
    c = float(input("Ingrese coeficiente c: "))
    
    if a == 0:
        print("El coeficiente 'a' no puede ser cero")
    else:
        resultado = calcular_raices(a, b, c)
        print(f"\nEcuación: {a:.2f}x² + {b:.2f}x + {c:.2f} = 0")
        print(f"Discriminante: {b**2 - 4*a*c:.2f}")
        print(resultado)
except ValueError:
    print("Error: Ingrese valores numéricos válidos")