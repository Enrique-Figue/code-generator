clc; clear; close all;  % Limpiar consola, workspace y cerrar figuras

% Parámetros de entrada
x = linspace(-5, 5, 1000);  % Rango de evaluación con 1000 puntos
dx = x(2) - x(1);           % Calcular paso diferenciación numérica

% Función principal: f(x) = sen(x) + x²/10 
f = sin(x) + x.^2/10;

% Cálculo de derivada numérica usando diferencias finitas hacia adelante
df = diff(f)/dx;            % Derivada aproximada
x_df = x(1:end-1);          % Ajustar dominio para derivada

% Visualización comparativa
figure('Color', 'white', 'Name', 'Función y su Derivada');
plot(x, f, 'b', 'LineWidth', 2, 'DisplayName', 'f(x) = sen(x) + x²/10');
hold on;
plot(x_df, df, 'r--', 'LineWidth', 2, 'DisplayName', 'Derivada numérica');

% Configuración gráfica
title({'Relación función-derivada','(f(x) = sen(x) + x²/10)'}, 'FontSize', 12);
xlabel('x', 'FontWeight', 'bold');
ylabel('f(x) / df(x)', 'FontWeight', 'bold');
legend('show', 'Location', 'northwest');
grid on;
xlim([-5 5]);
set(gca, 'FontSize', 10);

% Anotación explicativa
annotation('textbox', [0.15 0.7 0.2 0.15], 'String', {'La derivada muestra:','- Tasa de cambio instantánea','- Puntos críticos','- Concavidad'}, 'FitBoxToText', 'on', 'BackgroundColor', 'w');