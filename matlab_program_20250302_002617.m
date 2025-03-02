Aquí tienes un programa de MATLAB que realiza una regresión lineal simple y muestra los resultados de forma visual, incluyendo parámetros estadísticos importantes:

```matlab
% Regresión Lineal Educativa
% Genera datos sintéticos, ajusta un modelo y muestra resultados estadísticos

clc; clear; close all;

%% Entrada de parámetros (interactivo)
num_puntos = input('Ingrese número de puntos [20]: ');
if isempty(num_puntos)
    num_puntos = 20;
end

ruido = input('Ingrese nivel de ruido [0.5]: ');
if isempty(ruido)
    ruido = 0.5;
end

%% Generación de datos sintéticos
x = linspace(0, 10, num_puntos)';
X = [ones(size(x)) x];  % Matriz de diseño
coef_real = [1; 0.8];    % [Intercepto; Pendiente]
y = X * coef_real + ruido * randn(num_puntos, 1);

%% Ajuste del modelo lineal
coef = X \ y;  % Regresión por mínimos cuadrados
y_pred = X * coef;

%% Cálculo de estadísticos
SSR = sum((y_pred - mean(y)).^2);  % Suma de cuadrados de la regresión
SST = sum((y - mean(y)).^2);       % Suma de cuadrados total
R2 = SSR/SST;                      % Coeficiente de determinación

%% Visualización
figure('Color','white','Name','Regresión Lineal Educativa')
hold on
grid on

% Datos originales
scatter(x, y, 40, 'filled', 'MarkerFaceColor',[0.2 0.4 0.8])

% Línea de regresión
plot(x, y_pred, 'LineWidth',2, 'Color',[0.9 0.3 0.2])

% Configuración gráfica
title(['Regresión Lineal: y = ' num2str(coef(2),'%.2f') 'x + ' num2str(coef(1),'%.2f')])
xlabel('Variable independiente (X)')
ylabel('Variable dependiente (Y)')
legend('Datos reales', 'Modelo ajustado', 'Location','northwest')

% Mostrar R^2
annotation('textbox', [0.6 0.2 0.2 0.1], 'String', ...
    sprintf('R² = %.2f\nPendiente real: 0.8\nIntercepto real: 1', R2), ...
    'EdgeColor','none','FontSize',10);

%% Resultados en consola
fprintf('\nResultados de la regresión:\n')
fprintf(' - Intercepto: %.2f (Real: 1.00)\n', coef(1))
fprintf(' - Pendiente:  %.2f (Real: 0.80)\n', coef(2))
fprintf(' - Coeficiente de determinación (R²): %.2f\n', R2)
```

**Características educativas:**
1. Genera datos sintéticos con parámetros configurables
2. Muestra la relación entre datos reales y el modelo ajustado
3. Calcula e interpreta el coeficiente R²
4. Compara parámetros estimados con los valores reales
5. Interface interactiva para ajustar parámetros iniciales
6. Visualización profesional con elementos explicativos

**Cómo usar:**
1. Ejecuta el programa en MATLAB
2. Introduce los parámetros solicitados o presiona Enter para usar valores por defecto
3. Analiza la gráfica resultante y los estadísticos mostrados

**Qué aprenderás:**
- Conceptos básicos de regresión lineal
- Importancia del ajuste del modelo
- Interpretación de parámetros estadísticos
- Efecto del ruido en los datos
- Visualización de resultados científicos

El programa produce una gráfica similar a esta: ![Resultado gráfico hipotético que muestra puntos azules distribuidos alrededor de una línea roja diagonal con parámetros estadísticos](https://via.placeholder.com/400x300/FFFFFF/4286f4?text=Gráfico+de+regresión+lineal+con+0.8x+%2B+1+y+R²+≈+0.85)