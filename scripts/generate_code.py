from openai import OpenAI
import os
import re
from datetime import datetime

def extract_code_snippet(text):
    """
    Busca en 'text' el primer bloque de código entre triple backticks (```).
    Retorna el contenido del bloque de código, sin los backticks, si existe.
    Si no encuentra un bloque de código, retorna None.
    """
    pattern = r"```[a-zA-Z]*\n([\s\S]*?)```"  # Captura lo que hay entre ```...```
    match = re.search(pattern, text)
    if match:
        return match.group(1).strip()
    return None

def generate_code(prompt):
    # Verificar que la API key esté definida
    api_key = os.getenv("DEEPSEEK_API_KEY")
    if not api_key:
        raise ValueError("La variable de entorno DEEPSEEK_API_KEY no está definida.")
    
    # Inicializa el cliente usando la API key del entorno
    client = OpenAI(
        base_url="https://openrouter.ai/api/v1",
        api_key=api_key,
    )
    completion = client.chat.completions.create(
        extra_body={},
        model="deepseek/deepseek-r1:free",
        messages=[
            {"role": "user", "content": prompt}
        ]
    )
    
    # Obtenemos la respuesta y extraemos el bloque de código
    response_text = completion.choices[0].message.content.strip()
    code_only = extract_code_snippet(response_text)
    return code_only

def extract_program_name(code, language):
    """
    Busca en el código la primera línea que contenga el nombre del programa.
    Para Python, se espera: "# Nombre: <nombre>"
    Para Matlab, se espera: "% Nombre: <nombre>"
    Retorna una tupla (program_name, code_without_first_line).
    Si no se encuentra, retorna (None, code).
    """
    lines = code.splitlines()
    if not lines:
        return None, code
    
    if language.lower() == "python" and lines[0].startswith("# Nombre:"):
        program_name = lines[0].replace("# Nombre:", "").strip()
        code_without_first = "\n".join(lines[1:]).strip()
        return program_name, code_without_first
    elif language.lower() == "matlab" and lines[0].startswith("% Nombre:"):
        program_name = lines[0].replace("% Nombre:", "").strip()
        code_without_first = "\n".join(lines[1:]).strip()
        return program_name, code_without_first
    
    return None, code

def save_code(filename, content):
    with open(filename, "w", encoding="utf-8") as f:
        f.write(content)

def create_program_folder(base_folder, program_name):
    """
    Crea (si no existe) la carpeta base y la subcarpeta con el nombre del programa.
    Retorna la ruta completa de la subcarpeta.
    """
    folder_path = os.path.join(base_folder, program_name)
    os.makedirs(folder_path, exist_ok=True)
    return folder_path

def main():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # --- Para el programa en Python ---
    python_prompt = (
        "Genera un programa sencillo en Python que realice una tarea útil y educativa. "
        "Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional. "
        "La primera línea debe ser un comentario en el siguiente formato: '# Nombre: <nombre descriptivo>'."
    )
    python_code_raw = generate_code(python_prompt)
    if python_code_raw is not None:
        prog_name_py, python_code = extract_program_name(python_code_raw, "python")
        if prog_name_py is None:
            # Si no se encontró el nombre, asigna un nombre por defecto usando la marca de tiempo.
            prog_name_py = f"programa_python_{timestamp}"
            python_code = python_code_raw
        # Crear carpeta en "Programas Python" con el nombre del programa
        folder_py = create_program_folder("Programas Python", prog_name_py)
        # Guardar el archivo del programa
        code_filename_py = os.path.join(folder_py, f"{prog_name_py}.py")
        save_code(code_filename_py, python_code)
        
        # Generar README para el programa Python
        readme_prompt_py = (
            f"Genera un archivo README en markdown para el programa '{prog_name_py}' en Python. "
            "El README debe explicar de forma visualmente atractiva qué hace el programa y cómo usarlo, "
            "usando títulos, listas y elementos gráficos en markdown si es posible. Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional."
        )
        readme_py = generate_code(readme_prompt_py)
        if readme_py is not None:
            readme_filename_py = os.path.join(folder_py, "README.md")
            save_code(readme_filename_py, readme_py)
    
    # --- Para el programa en Matlab ---
    matlab_prompt = (
        "Genera un programa sencillo en Matlab que realice una tarea útil y educativa. "
        "Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional. "
        "La primera línea debe ser un comentario en el siguiente formato: '% Nombre: <nombre descriptivo>'."
    )
    matlab_code_raw = generate_code(matlab_prompt)
    if matlab_code_raw is not None:
        prog_name_mat, matlab_code = extract_program_name(matlab_code_raw, "matlab")
        if prog_name_mat is None:
            prog_name_mat = f"programa_matlab_{timestamp}"
            matlab_code = matlab_code_raw
        # Crear carpeta en "Programas Matlab" con el nombre del programa
        folder_mat = create_program_folder("Programas Matlab", prog_name_mat)
        # Guardar el archivo del programa
        code_filename_mat = os.path.join(folder_mat, f"{prog_name_mat}.m")
        save_code(code_filename_mat, matlab_code)
        
        # Generar README para el programa Matlab
        readme_prompt_mat = (
            f"Genera un archivo README en markdown para el programa '{prog_name_mat}' en Matlab. "
            "El README debe explicar de forma visualmente atractiva qué hace el programa y cómo usarlo, "
            "usando títulos, listas y elementos gráficos en markdown si es posible. Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional."
        )
        readme_mat = generate_code(readme_prompt_mat)
        if readme_mat is not None:
            readme_filename_mat = os.path.join(folder_mat, "README.md")
            save_code(readme_filename_mat, readme_mat)

if __name__ == "__main__":
    main()


