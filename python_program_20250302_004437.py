"""
Conversor de temperaturas con validación y manejo de errores.
Permite conversiones entre Celsius, Fahrenheit y Kelvin.
"""

def celsius_to_fahrenheit(c):
    """Convierte Celsius a Fahrenheit."""
    return c * 9/5 + 32

def celsius_to_kelvin(c):
    """Convierte Celsius a Kelvin."""
    return c + 273.15

def fahrenheit_to_celsius(f):
    """Convierte Fahrenheit a Celsius."""
    return (f - 32) * 5/9

def fahrenheit_to_kelvin(f):
    """Convierte Fahrenheit a Kelvin."""
    return (f - 32) * 5/9 + 273.15

def kelvin_to_celsius(k):
    """Convierte Kelvin a Celsius."""
    return k - 273.15

def kelvin_to_fahrenheit(k):
    """Convierte Kelvin a Fahrenheit."""
    return (k - 273.15) * 9/5 + 32

CONVERSIONES = {
    ('C', 'F'): celsius_to_fahrenheit,
    ('C', 'K'): celsius_to_kelvin,
    ('F', 'C'): fahrenheit_to_celsius,
    ('F', 'K'): fahrenheit_to_kelvin,
    ('K', 'C'): kelvin_to_celsius,
    ('K', 'F'): kelvin_to_fahrenheit,
}

UNIDADES_VALIDAS = {'C', 'F', 'K'}

MIN_TEMPERATURAS = {
    'C': -273.15,
    'F': -459.67,
    'K': 0.0
}

def validar_unidad(unidad):
    """Valida que la unidad pertenezca a C, F o K."""
    return unidad.upper() in UNIDADES_VALIDAS

def obtener_entrada_numerica(prompt):
    """Obtiene y valida una entrada numérica del usuario."""
    while True:
        try:
            valor = float(input(prompt))
            return valor
        except ValueError:
            print("Error: Ingrese un valor numérico válido.")

def obtener_entrada_unidad(prompt):
    """Obtiene y valida una unidad de temperatura."""
    while True:
        unidad = input(prompt).upper()
        if validar_unidad(unidad):
            return unidad
        print(f"Unidad inválida. Use {' '.join(UNIDADES_VALIDAS)}")

def validar_temperatura_minima(temp, unidad):
    """Verifica que la temperatura no esté por debajo del cero absoluto."""
    minima = MIN_TEMPERATURAS.get(unidad, -float('inf'))
    if temp < minima:
        print(f"¡Error! La temperatura mínima para {unidad} es {minima}")
        return False
    return True

def main():
    print("Conversor de Temperaturas")
    print("Formatos soportados: Celsius (C), Fahrenheit (F), Kelvin (K)")
    
    while True:
        # Obtener entrada del usuario
        try:
            temp = obtener_entrada_numerica("Ingrese temperatura: ")
            origen = obtener_entrada_unidad("Unidad origen (C/F/K): ")
            destino = obtener_entrada_unidad("Unidad destino (C/F/K): ")
            
            # Validar temperatura mínima absoluta
            if not validar_temperatura_minima(temp, origen):
                continue
                
            # Realizar conversión si es necesaria
            if origen == destino:
                resultado = temp
            else:
                conversion = CONVERSIONES[(origen, destino)]
                resultado = conversion(temp)
                
            print(f"Resultado: {resultado:.2f}°{destino}\n")
            
        except KeyError:
            print("Error: Conversión no soportada entre esas unidades")
        
        # Preguntar por otra conversión
        continuar = input("¿Convertir otra? (s/n): ").lower()
        if continuar != 's':
            print("¡Hasta luego!")
            break

if __name__ == "__main__":
    main()