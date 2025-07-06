import cmath

a = float(input("Coeficiente a: "))
b = float(input("Coeficiente b: "))
c = float(input("Coeficiente c: "))

if a == 0:
    if b == 0:
        print("Ecuación no válida" if c != 0 else "Todos los números reales son solución")
    else:
        x = -c / b
        print(f"Solución lineal: x = {x:.2f}")
else:
    discriminante = b**2 - 4*a*c
    raiz = cmath.sqrt(discriminante)
    x1 = (-b + raiz) / (2*a)
    x2 = (-b - raiz) / (2*a)
    
    print(f"\nDiscriminante: {discriminante:.2f}")
    if discriminante > 0:
        print("Dos soluciones reales:")
        print(f"x1 = {x1.real:.2f}\nx2 = {x2.real:.2f}")
    elif discriminante == 0:
        print("Una solución real doble:")
        print(f"x = {x1.real:.2f}")
    else:
        print("Dos soluciones complejas conjugadas:")
        print(f"x1 = {x1:.2f}\nx2 = {x2:.2f}")