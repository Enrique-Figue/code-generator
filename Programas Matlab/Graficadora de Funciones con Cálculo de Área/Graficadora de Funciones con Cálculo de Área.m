% Descripción: Grafica una función matemática y calcula el área bajo la curva usando el método del trapecio
% Autor: MatlabAI
% Fecha: 15/09/2023

%% Limpiar entorno
clc; clear; close all;

%% Entrada de usuario
fprintf('Calculadora de área bajo la curva\n');
func_str = input('Ingrese función (ej: @(x) sin(x)): ');
a = input('Límite inferior a: ');
b = input('Límite superior b: ');
n = input('Número de trapecios (precisión): ');

%% Cálculos
f = func_str;
x = linspace(a, b, n+1);
y = f(x);
area = (b-a)/(2*n) * (y(1) + 2*sum(y(2:end-1)) + y(end));

%% Visualización
figure('Color','white');
hold on; grid on;

% Graficar función principal
fplot(f, [a b], 'LineWidth', 1.5, 'DisplayName', 'Función');

% Rellenar área bajo la curva
area_x = [x; x];
area_y = [zeros(1,n+1); y];
area_plot = fill(area_x(:), area_ypretty(:), [0.8 0.9 1], ...
    'EdgeColor', 'none', 'DisplayName', 'Área integrada');

% Ajustes estéticos
title(['Área bajo la curva: ' func2str(f)], 'FontSize', 12);
xlabel('x'); ylabel('f(x)');
legend('show', 'Location','northwest');
set(gca, 'GridAlpha', 0.3);

%% Resultados numéricos
fprintf('\nResultado de la integración numérica:\n');
fprintf('- Método: Regla del trapecio compuesta\n');
fprintf('- Particiones: %d trapecios\n', n);
fprintf('- Área calculada: %.6f\n', area);