# Programa simple de lista de tareas que enseña estructuras de datos básicas y operaciones CRUD

def mostrar_menu():
    print("\n--- Lista de Tareas ---")
    print("1. Agregar tarea")
    print("2. Ver tareas")
    print("3. Eliminar tarea")
    print("4. Salir")

tareas = []

while True:
    mostrar_menu()
    opcion = input("Seleccione una opción: ")
    
    if opcion == "1":
        # Agregar tarea
        tarea = input("Ingrese la nueva tarea: ")
        tareas.append(tarea)
        print(f"Tarea '{tarea}' agregada!")
    
    elif opcion == "2":
        # Mostrar tareas con índice
        if not tareas:
            print("No hay tareas pendientes!")
        else:
            print("\nTareas pendientes:")
            for i, tarea in enumerate(tareas, 1):
                print(f"{i}. {tarea}")
    
    elif opcion == "3":
        # Eliminar tarea con manejo de errores
        if not tareas:
            print("No hay tareas para eliminar!")
            continue
            
        try:
            indice = int(input("Ingrese el número de tarea a eliminar: ")) - 1
            tarea_eliminada = tareas.pop(indice)
            print(f"Tarea '{tarea_eliminada}' eliminada!")
        except (ValueError, IndexError):
            print("Error: Ingrese un número de tarea válido")
    
    elif opcion == "4":
        print("¡Hasta luego!")
        break
    
    else:
        print("Opción inválida. Intente nuevamente.")