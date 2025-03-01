from openai import OpenAI
import os
from datetime import datetime

def generate_code(prompt):
    # Inicializa el cliente usando la API key del entorno
    client = OpenAI(
        base_url="https://openrouter.ai/api/v1",
        api_key=os.getenv("DEEPSEEK_API_KEY"),
    )
    completion = client.chat.completions.create(
        extra_headers={
            "HTTP-Referer": os.getenv("HTTP_REFERER", "https://yourwebsite.com"),
            "X-Title": os.getenv("X_TITLE", "YourSiteName"),
        },
        extra_body={},
        model="deepseek/deepseek-r1:free",
        messages=[
            {"role": "user", "content": prompt}
        ]
    )
    return completion.choices[0].message.content.strip()

def save_code(filename, code):
    with open(filename, "w", encoding="utf-8") as f:
        f.write(code)

def main():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    
    # Generar código en Python
    prompt_python = "Genera un programa sencillo en Python que realice una tarea útil y educativa."
    python_code = generate_code(prompt_python)
    python_filename = f"python_program_{timestamp}.py"
    save_code(python_filename, python_code)
    
    # Generar código en Matlab
    prompt_matlab = "Genera un programa sencillo en Matlab que realice una tarea útil y educativa."
    matlab_code = generate_code(prompt_matlab)
    matlab_filename = f"matlab_program_{timestamp}.m"
    save_code(matlab_filename, matlab_code)

if __name__ == "__main__":
    main()
