import os

def cargar_tareas():
    tareas = []
    if os.path.exists("tareas.txt"):
        with open("tareas.txt", "r") as archivo:
            tareas = [linea.strip() for linea in archivo.readlines()]
    return tareas

def guardar_tareas(tareas):
    with open("tareas.txt", "w") as archivo:
        for tarea in tareas:
            archivo.write(f"{tarea}\n")

def mostrar_menu():
    print("\n--- Gestor de Tareas ---")
    print("1. Agregar tarea")
    print("2. Ver tareas")
    print("3. Eliminar tarea")
    print("4. Salir")

def main():
    tareas = cargar_tareas()
    
    while True:
        mostrar_menu()
        opcion = input("Seleccione una opción: ")
        
        if opcion == "1":
            tarea = input("Ingrese la nueva tarea: ")
            tareas.append(tarea)
            guardar_tareas(tareas)
            print("Tarea agregada.")
        
        elif opcion == "2":
            print("\n--- Tareas Pendientes ---")
            for i, tarea in enumerate(tareas, 1):
                print(f"{i}. {tarea}")
        
        elif opcion == "3":
            try:
                indice = int(input("Número de tarea a eliminar: ")) - 1
                if 0 <= indice < len(tareas):
                    tarea_eliminada = tareas.pop(indice)
                    guardar_tareas(tareas)
                    print(f"Tarea eliminada: {tarea_eliminada}")
                else:
                    print("Índice inválido")
            except ValueError:
                print("Entrada no válida")
        
        elif opcion == "4":
            print("Saliendo del gestor...")
            break
        
        else:
            print("Opción no válida")

if __name__ == "__main__":
    main()