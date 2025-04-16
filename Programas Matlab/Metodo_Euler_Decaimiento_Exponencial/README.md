# 🧪 Método de Euler para Decaimiento Exponencial en MATLAB

¡Bienvenido al repositorio del **Método de Euler aplicado al modelo de decaimiento exponencial**! Este programa resuelve numéricamente la ecuación diferencial de decaimiento utilizando MATLAB y compara la solución con el resultado analítico.

---

## 📋 Descripción
El proyecto implementa el **Método de Euler** para aproximar la solución de la ecuación de decaimiento exponencial:
\[ \frac{dy}{dt} = -ky \]
donde:
- \( y(t) \): Cantidad de sustancia restante.
- \( k \): Constante de decaimiento.
- \( t \): Tiempo.

El programa genera una gráfica comparando la solución numérica con la solución analítica \( y(t) = y_0 e^{-kt} \).

---

## 🛠 Requisitos
- MATLAB R2018a o superior.
- Conocimientos básicos de MATLAB (ejecutar scripts y ajustar parámetros).

---

## 🚀 Instrucciones de Uso
1. **Descarga el código**: Clona este repositorio o descarga el archivo `Metodo_Euler_Decaimiento_Exponencial.m`.
2. **Abre en MATLAB**: Ejecuta el script desde el editor de MATLAB.
3. **Configura parámetros** (opcional): Modifica las constantes en la sección `PARÁMETROS AJUSTABLES`.
4. **Ejecuta el programa**: Presiona `Run` (▶️) y observa la gráfica resultante.

---

## ⚙️ Parámetros Ajustables
| Variable  | Descripción                   | Valor por defecto |
|-----------|-------------------------------|-------------------|
| `k`       | Constante de decaimiento      | 0.5               |
| `y0`      | Valor inicial \( y(0) \)      | 100               |
| `t_initial`| Tiempo inicial               | 0                 |
| `t_final` | Tiempo final                  | 10                |
| `h`       | Paso de tiempo (step size)    | 0.1               |

---

## 📊 Ejemplo de Salida
Al ejecutar el script, se generará una gráfica con dos curvas:
- **Línea azul** (`*`): Solución numérica (Método de Euler).
- **Línea roja** (`-`): Solución analítica exacta.

![Gráfica de Decaimiento Exponencial](https://via.placeholder.com/600x400/009688/FFFFFF?text=Gráfica+Ejemplo:+Euler+vs+Analítico)

---

## 📚 Explicación del Método de Euler
El método aproxima la solución en cada paso usando:
\[ y_{n+1} = y_n + h \cdot f(t_n, y_n) \]
donde:
- \( h \): Tamaño del paso.
- \( f(t_n, y_n) = -ky_n \): Función derivada.

---

## 🤝 Contribuir
¿Quieres mejorar este proyecto? ¡Abre un *issue* o envía un *pull request*!

---

**License**: [MIT](https://opensource.org/licenses/MIT)  
**Versión de MATLAB**: ≥ R2018a  
![MatLAB Compatible](https://img.shields.io/badge/MATLAB-Compatible-success)