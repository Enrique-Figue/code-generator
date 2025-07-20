tareas = []

while True:
    print("\n1. Agregar tarea\n2. Ver tareas\n3. Eliminar tarea\n4. Salir")
    opcion = input("Seleccione una opción: ")

    if opcion == '1':
        tarea = input("Ingrese la tarea: ")
        tareas.append(tarea)
        print(f"Tarea '{tarea}' agregada.")
    elif opcion == '2':
        if not tareas:
            print("No hay tareas registradas.")
        else:
            print("\nLista de tareas:")
            for i, tarea in enumerate(tareas, 1):
                print(f"{i}. {tarea}")
    elif opcion == '3':
        if not tareas:
            print("No hay tareas para eliminar.")
        else:
            print("Tareas disponibles:")
            for i, tarea in enumerate(tareas, 1):
                print(f"{i}. {tarea}")
            try:
                indice = int(input("Ingrese el número de la tarea a eliminar: ")) - 1
                if 0 <= indice < len(tareas):
                    eliminada = tareas.pop(indice)
                    print(f"Tarea '{eliminada}' eliminada.")
                else:
                    print("Índice inválido.")
            except ValueError:
                print("Error: Ingrese un número válido.")
    elif opcion == '4':
        print("¡Hasta luego!")
        break
    else:
        print("Opción no válida. Intente nuevamente.")