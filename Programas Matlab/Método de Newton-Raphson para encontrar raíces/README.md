# 🌀 Método de Newton-Raphson en MATLAB

![Newton-Raphson Visual](https://upload.wikimedia.org/wikipedia/commons/e/e0/NewtonIteration_Ani.gif)  
*Ilustración del método convergiendo a una raíz.*

## 📄 Descripción
Este programa implementa el **método de Newton-Raphson** para encontrar raíces de funciones no lineales. Ideal para:
- Resolver ecuaciones complejas de forma numérica.
- Aplicaciones en ingeniería, física y matemáticas.
- Aprendizaje del método iterativo con visualización de resultados.

## ✨ Características
- 📊 Muestra una tabla de convergencia en cada iteración.
- 🛠️ Calcula automáticamente la derivada (requiere `f.m` y `df.m`).
- 🚫 Maneja errores como divisiones por cero o divergencia.
- 📌 Exporta resultados a un archivo `resultados.txt`.

## 🛠️ Requisitos
- MATLAB R2018b o superior.
- Definir la función `f(x)` y su derivada `df(x)` en archivos `.m`.

## 📝 Instrucciones de Uso
1. **Preparar archivos**:
   - Crear `f.m` con la función a evaluar (ejemplo):