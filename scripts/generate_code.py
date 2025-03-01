import openai
import os
from datetime import datetime

# Configurar la API key a través de variables de entorno
openai.api_key = os.getenv("OPENAI_API_KEY")

def generate_code(prompt):
    response = openai.Completion.create(
        engine="text-davinci-003",  # O el modelo que prefieras
        prompt=prompt,
        max_tokens=300
    )
    return response.choices[0].text.strip()

def save_code(filename, code):
    with open(filename, "w", encoding="utf-8") as f:
        f.write(code)

def main():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # Generar código en Python
    prompt_python = "Generate a simple, useful, and educational Python program."
    python_code = generate_code(prompt_python)
    python_filename = f"python_program_{timestamp}.py"
    save_code(python_filename, python_code)
    
    # Generar código en Matlab
    prompt_matlab = "Generate a simple, useful, and educational Matlab program."
    matlab_code = generate_code(prompt_matlab)
    matlab_filename = f"matlab_program_{timestamp}.m"
    save_code(matlab_filename, matlab_code)

if __name__ == "__main__":
    main()
