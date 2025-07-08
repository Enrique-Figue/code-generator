import math

print("Calculadora de raíces para ax² + bx + c = 0")
a = float(input("Ingrese coeficiente a: "))
b = float(input("Ingrese coeficiente b: "))
c = float(input("Ingrese coeficiente c: "))

if a == 0:
    print("Error: no es una ecuación cuadrática.")
else:
    discriminante = b**2 - 4*a*c
    if discriminante >= 0:
        x1 = (-b + math.sqrt(discriminante)) / (2*a)
        x2 = (-b - math.sqrt(discriminante)) / (2*a)
        print(f"Raíces reales: {x1:.2f}, {x2:.2f}")
    else:
        real = -b/(2*a)
        imaginario = math.sqrt(-discriminante)/(2*a)
        print(f"Raíces complejas: {real:.2f} ± {imaginario:.2f}i")