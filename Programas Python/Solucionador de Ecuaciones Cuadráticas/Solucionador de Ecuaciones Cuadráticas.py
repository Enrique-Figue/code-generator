import math
import cmath

print("¡Bienvenido al Solucionador de Ecuaciones Cuadráticas!")
print("Ingrese los coeficientes de la ecuación ax² + bx + c = 0")

try:
    a = float(input("a: "))
    b = float(input("b: "))
    c = float(input("c: "))
    
    if a == 0:
        if b == 0:
            if c == 0:
                print("La ecuación tiene infinitas soluciones.")
            else:
                print("La ecuación no tiene solución.")
        else:
            x = -c / b
            print(f"Es una ecuación lineal. Solución: x = {x:.2f}")
    else:
        discriminante = b**2 - 4*a*c
        if discriminante > 0:
            raiz = math.sqrt(discriminante)
            x1 = (-b + raiz) / (2*a)
            x2 = (-b - raiz) / (2*a)
            print(f"Dos raíces reales: x1 = {x1:.2f}, x2 = {x2:.2f}")
        elif discriminante == 0:
            x = -b / (2*a)
            print(f"Raíz única real: x = {x:.2f}")
        else:
            raiz = cmath.sqrt(discriminante)
            x1 = (-b + raiz) / (2*a)
            x2 = (-b - raiz) / (2*a)
            print(f"Dos raíces complejas: x1 = {x1:.2f}, x2 = {x2:.2f}")
except ValueError:
    print("Error: Ingrese valores numéricos válidos.")
except ZeroDivisionError:
    print("Error: División por cero.")