% Descripción: Este programa grafica una función matemática, su derivada numérica
% y calcula el área bajo la curva en un intervalo dado, proporcionando una
% herramienta visual y numérica para entender conceptos de cálculo básico.

clear all;
close all;
clc;

% Parámetros configurables
x_inicio = -5;      % Inicio del dominio
x_fin = 5;          % Fin del dominio
num_puntos = 1000;  % Número de puntos para discretización

% Definición de la función (modificable)
f = @(x) x.^2 .* sin(x);  % Función ejemplo: x² * sen(x)

% Creación del vector x y cálculo de la función
x = linspace(x_inicio, x_fin, num_puntos);
y = f(x);

% Cálculo de la derivada numérica
dx = x(2) - x(1);                  % Tamaño del paso
y_derivada = diff(y) / dx;         % Derivada usando diferencias finitas
x_derivada = x(1:end-1) + dx/2;    % Ajuste de puntos para la derivada

% Cálculo de la integral numérica
area = trapz(x, y);                % Integral usando regla trapezoidal

% Visualización de resultados
figure('Color', 'white', 'Name', 'Análisis de Función');
subplot(2,1,1);
plot(x, y, 'b', 'LineWidth', 2);
hold on;
plot(x_derivada, y_derivada, 'r--', 'LineWidth', 1.5);
title(['Función: f(x) = x²·sin(x) | Área bajo la curva: ', num2str(area, '%.2f')]);
xlabel('x');
ylabel('Valores');
legend('Función original', 'Derivada numérica', 'Location', 'northwest');
grid on;

% Gráfico adicional para el área
subplot(2,1,2);
area(x, y, 'FaceColor', [0.7 0.9 0.7], 'EdgeColor', 'none');
title('Representación del área bajo la curva');
xlabel('x');
ylabel('Área acumulada');
grid on;

% Mostrar resultado numérico en consola
fprintf('Área bajo la curva entre %.1f y %.1f: %.4f\n', x_inicio, x_fin, area);