def mostrar_huevo():
    print("\nEtapa: Huevo")
    print("- La mariposa deposita sus huevos en hojas de plantas.")
    print("- Los huevos eclosionan en pocos días, dependiendo de la especie.")

def mostrar_larva():
    print("\nEtapa: Larva (Oruga)")
    print("- La oruga emerge y se alimenta vorazmente de hojas.")
    print("- Pasa por varios estadios de muda hasta alcanzar su tamaño máximo.")

def mostrar_pupa():
    print("\nEtapa: Pupa (Crisálida)")
    print("- La oruga forma una cubierta protectora llamada crisálida.")
    print("- Dentro ocurre la metamorfosis para convertirse en mariposa.")

def mostrar_adulto():
    print("\nEtapa: Adulto (Mariposa)")
    print("- La mariposa emerge y expande sus alas para volar.")
    print("- Se reproduce y reinicia el ciclo biológico.")

def main():
    menu = """
    CICLO DE VIDA DE LA MARIPOSA
    ----------------------------------
    1. Etapa del Huevo
    2. Etapa de Larva
    3. Etapa de Pupa
    4. Etapa Adulta
    5. Salir
    """
    
    while True:
        print(menu)
        opcion = input("Seleccione una etapa (1-5): ").strip()
        
        if opcion == "1":
            mostrar_huevo()
        elif opcion == "2":
            mostrar_larva()
        elif opcion == "3":
            mostrar_pupa()
        elif opcion == "4":
            mostrar_adulto()
        elif opcion == "5":
            print("\n¡Gracias por aprender sobre las mariposas!")
            break
        else:
            print("\n❌ Opción inválida. Introduce un número del 1 al 5.")
        
        input("\nPresiona Enter para continuar...")

if __name__ == "__main__":
    main()