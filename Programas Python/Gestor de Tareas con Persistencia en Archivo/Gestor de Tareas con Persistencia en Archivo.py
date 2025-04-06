def cargar_tareas():
    try:
        with open('tareas.txt', 'r') as archivo:
            return archivo.read().splitlines()
    except FileNotFoundError:
        return []

def guardar_tareas(tareas):
    with open('tareas.txt', 'w') as archivo:
        archivo.write('\n'.join(tareas))

def mostrar_menu():
    print("\n1. Agregar tarea\n2. Eliminar tarea\n3. Ver tareas\n4. Salir")

def main():
    tareas = cargar_tareas()
    while True:
        mostrar_menu()
        opcion = input("Seleccione una opción: ")
        if opcion == '1':
            tarea = input("Ingrese la nueva tarea: ")
            tareas.append(tarea)
            guardar_tareas(tareas)
        elif opcion == '2':
            if not tareas:
                print("No hay tareas para eliminar.")
                continue
            print("Tareas:")
            for idx, tarea in enumerate(tareas, 1):
                print(f"{idx}. {tarea}")
            try:
                num = int(input("Número de tarea a eliminar: ")) - 1
                tareas.pop(num)
                guardar_tareas(tareas)
            except (ValueError, IndexError):
                print("Entrada inválida.")
        elif opcion == '3':
            print("\nLista de tareas:")
            for idx, tarea in enumerate(tareas, 1):
                print(f"{idx}. {tarea}")
        elif opcion == '4':
            print("¡Hasta luego!")
            break
        else:
            print("Opción no válida.")

if __name__ == "__main__":
    main()