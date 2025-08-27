% Este programa grafica una función matemática y su derivada en el mismo eje,
% permitiendo visualizar la relación entre ambas. Ideal para aprendizaje de cálculo.

clf; clear; clc;  % Limpiar figuras, workspace y consola

syms x;  % Definir variable simbólica
f = x^3 - 3*x^2 + 2*x;  % Función de ejemplo (polinomio cúbico)
df = diff(f);  % Calcular derivada simbólica

% Convertir funciones simbólicas a funciones numéricas para graficar
f_handle = matlabFunction(f);
df_handle = matlabFunction(df);

x_vals = linspace(-2, 4, 500);  % Rango de visualización
y = f_handle(x_vals);
dy = df_handle(x_vals);

% Configurar gráfico
figure('Color', 'white');
hold on;
grid on;
plot(x_vals, y, 'b', 'LineWidth', 2, 'DisplayName', 'f(x) = x³ - 3x² + 2x');
plot(x_vals, dy, 'r--', 'LineWidth', 2, 'DisplayName', 'f''(x) = 3x² - 6x + 2');
title('Función y su Derivada');
xlabel('x');
ylabel('Valor');
legend('show', 'Location', 'northwest');
axis tight;