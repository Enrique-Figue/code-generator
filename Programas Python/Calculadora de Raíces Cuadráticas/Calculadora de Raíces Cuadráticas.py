import math

a = float(input("Ingrese el coeficiente a: "))
b = float(input("Ingrese el coeficiente b: "))
c = float(input("Ingrese el coeficiente c: "))

discriminante = b**2 - 4*a*c

if discriminante > 0:
    x1 = (-b + math.sqrt(discriminante)) / (2*a)
    x2 = (-b - math.sqrt(discriminante)) / (2*a)
    print(f"Raíces reales distintas: x1 = {x1:.2f}, x2 = {x2:.2f}")
elif discriminante == 0:
    x = -b / (2*a)
    print(f"Raíz única: x = {x:.2f}")
else:
    parte_real = -b / (2*a)
    parte_imaginaria = math.sqrt(abs(discriminante)) / (2*a)
    print(f"Raíces complejas: x1 = {parte_real:.2f} + {parte_imaginaria:.2f}i, x2 = {parte_real:.2f} - {parte_imaginaria:.2f}i")