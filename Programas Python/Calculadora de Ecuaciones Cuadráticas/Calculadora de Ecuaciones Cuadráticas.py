import math

print("Calculadora de ecuaciones cuadráticas: ax² + bx + c = 0")
a = float(input("Coeficiente a: "))
b = float(input("Coeficiente b: "))
c = float(input("Coeficiente c: "))

discriminante = b**2 - 4*a*c

print(f"\nEcuación: {a}x² + {b}x + {c} = 0")
print(f"Discriminante calculado: {discriminante}")

if discriminante > 0:
    raiz1 = (-b + math.sqrt(discriminante)) / (2*a)
    raiz2 = (-b - math.sqrt(discriminante)) / (2*a)
    print("Dos raíces reales:")
    print(f"x₁ = {raiz1:.2f}")
    print(f"x₂ = {raiz2:.2f}")
elif discriminante == 0:
    raiz = -b / (2*a)
    print("Una raíz real doble:")
    print(f"x = {raiz:.2f}")
else:
    real = -b / (2*a)
    imaginario = math.sqrt(abs(discriminante)) / (2*a)
    print("Dos raíces complejas conjugadas:")
    print(f"x₁ = {real:.2f} + {imaginario:.2f}i")
    print(f"x₂ = {real:.2f} - {imaginario:.2f}i")