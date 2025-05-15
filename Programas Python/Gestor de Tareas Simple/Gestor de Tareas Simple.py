def mostrar_menu():
    print("\n--- Gestor de Tareas ---")
    print("1. Agregar tarea")
    print("2. Ver tareas")
    print("3. Eliminar tarea")
    print("4. Salir")

def agregar_tarea(tareas):
    tarea = input("Ingrese la nueva tarea: ").strip()
    if tarea:
        tareas.append(tarea)
        print("Tarea agregada exitosamente!")
    else:
        print("Error: La tarea no puede estar vacía")

def ver_tareas(tareas):
    if not tareas:
        print("No hay tareas pendientes")
        return
    
    print("\n--- Tareas Pendientes ---")
    for i, tarea in enumerate(tareas, 1):
        print(f"{i}. {tarea}")

def eliminar_tarea(tareas):
    ver_tareas(tareas)
    if not tareas:
        return
    
    try:
        num = int(input("Ingrese el número de tarea a eliminar: "))
        if 1 <= num <= len(tareas):
            tarea_eliminada = tareas.pop(num-1)
            print(f"Tarea eliminada: {tarea_eliminada}")
        else:
            print("Número de tarea inválido")
    except ValueError:
        print("Error: Ingrese un número válido")

def main():
    tareas = []
    
    while True:
        mostrar_menu()
        opcion = input("Seleccione una opción: ").strip()
        
        if opcion == "1":
            agregar_tarea(tareas)
        elif opcion == "2":
            ver_tareas(tareas)
        elif opcion == "3":
            eliminar_tarea(tareas)
        elif opcion == "4":
            print("¡Hasta luego!")
            break
        else:
            print("Opción inválida. Intente nuevamente")

if __name__ == "__main__":
    main()