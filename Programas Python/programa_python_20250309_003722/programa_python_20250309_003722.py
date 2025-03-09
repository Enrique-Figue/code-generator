# Calculadora de Ecuación Cuadrática
import cmath

try:
    a = float(input("Ingrese coeficiente a: "))
    b = float(input("Ingrese coeficiente b: "))
    c = float(input("Ingrese coeficiente c: "))
    
    if a == 0:
        print("Error: 'a' no puede ser cero (no es cuadrática).")
    else:
        discriminante = b**2 - 4*a*c
        raiz1 = (-b + cmath.sqrt(discriminante)) / (2*a)
        raiz2 = (-b - cmath.sqrt(discriminante)) / (2*a)
        
        print("\nResultados:")
        print(f"Raíz 1: {raiz1.real:.2f} + {raiz1.imag:.2f}i" if raiz1.imag else f"Raíz 1: {raiz1.real:.2f}")
        print(f"Raíz 2: {raiz2.real:.2f} + {raiz2.imag:.2f}i" if raiz2.imag else f"Raíz 2: {raiz2.real:.2f}")

except ValueError:
    print("Error: Ingrese valores numéricos válidos.")