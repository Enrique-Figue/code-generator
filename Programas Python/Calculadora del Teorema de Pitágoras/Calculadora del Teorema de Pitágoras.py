import math

print("Calculadora del Teorema de Pitágoras")
print("Calcula el lado faltante de un triángulo rectángulo.")
print("Los lados son 'a' y 'b' (catetos), y 'c' (hipotenusa).\n")

while True:
    lados = input("Ingrese los dos lados conocidos (ej. 'a c'): ").lower().split()
    if len(lados) != 2:
        print("Error: Debe ingresar exactamente dos lados.")
        continue
    if not all(lado in ['a', 'b', 'c'] for lado in lados):
        print("Error: Los lados deben ser a, b o c.")
        continue
    if lados[0] == lados[1]:
        print("Error: Los lados deben ser distintos.")
        continue
    break

valores = {}
for lado in lados:
    while True:
        try:
            valor = float(input(f"Ingrese la longitud del lado {lado}: "))
            if valor <= 0:
                print("Error: La longitud debe ser positiva.")
                continue
            valores[lado] = valor
            break
        except ValueError:
            print("Error: Ingrese un número válido.")

if 'c' in valores:
    hipotenusa = valores['c']
    otro = next(l for l in lados if l != 'c')
    if valores[otro] >= hipotenusa:
        print(f"Error: La hipotenusa (c) debe ser mayor que el cateto {otro}.")
        exit()

faltante = list({'a', 'b', 'c'} - set(lados))[0]

a = valores.get('a', 0)
b = valores.get('b', 0)
c = valores.get('c', 0)

if faltante == 'c':
    resultado = math.hypot(a, b)
    formula = f"c = √(a² + b²) = √({a**2} + {b**2}) = {resultado:.2f}"
elif faltante == 'a':
    resultado = math.sqrt(c**2 - b**2)
    formula = f"a = √(c² - b²) = √({c**2} - {b**2}) = {resultado:.2f}"
else:
    resultado = math.sqrt(c**2 - a**2)
    formula = f"b = √(c² - a²) = √({c**2} - {a**2}) = {resultado:.2f}"

print(f"\nEl lado {faltante.upper()} mide {resultado:.2f}")
print("Fórmula utilizada:", formula)