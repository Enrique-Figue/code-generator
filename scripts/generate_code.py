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
    
    # Obtenemos la respuesta
    response_text = completion.choices[0].message.content.strip()
    
    # Extraemos solo la parte de código si viene en un bloque de backticks
    code_only = extract_code_snippet(response_text)
    return code_only

def save_code(filename, code):
    with open(filename, "w", encoding="utf-8") as f:
        f.write(code)

def main():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # Generar código en Python
    prompt_python = (
        "Genera un programa sencillo en Python que realice una tarea útil y educativa. "
        "Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional."
    )
    python_code = generate_code(prompt_python)
    if python_code is not None:
        python_filename = f"python_program_{timestamp}.py"
        save_code(python_filename, python_code)
    
    # Generar código en Matlab
    prompt_matlab = (
        "Genera un programa sencillo en Matlab que realice una tarea útil y educativa. "
        "Devuélvelo SOLO como un bloque de código entre triple backticks, sin texto adicional."
    )
    matlab_code = generate_code(prompt_matlab)
    if matlab_code is not None:
        matlab_filename = f"matlab_program_{timestamp}.m"
        save_code(matlab_filename, matlab_code)

if __name__ == "__main__":
    main()

