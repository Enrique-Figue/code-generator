# 📉 Método de Bisección para Raíces de Funciones en MATLAB

¡Bienvenido al programa de **Método de Bisección** en MATLAB! Este algoritmo encuentra raíces de funciones continuas en un intervalo dado, combinando precisión y simplicidad. 🌟

## 📋 Descripción
El método de bisección aproxima la raíz de una función `f(x)` en el intervalo `[a, b]` mediante divisiones sucesivas, asegurando la convergencia siempre que `f(a)` y `f(b)` tengan signos opuestos.

## 🚀 Características
- ✅ Validación automática del intervalo inicial.
- 🔄 Límite de iteraciones configurable.
- 📊 Generación de tablas de resultados y gráficos de convergencia.
- ⚙️ Tolerancia ajustable para la precisión deseada.

## 📌 Prerrequisitos
- **MATLAB R2018a** o superior.

## 🛠️ Uso
1. **Defina la función** `f(x)` en un archivo `.m` (ej: `f = @(x) x^2 - 2;`).
2. **Ejecute el programa** llamando a la función: