% Descripción: Grafica una función matemática y calcula su integral definida usando el método del trapecio
% Instrucciones: Ingresar función, límites de integración y número de intervalos

clc;
close all;
clear;

disp('=== Calculadora de Integrales y Graficadora ===');
f = input('Ingrese función (ej: @(x) sin(x)): ');
a = input('Límite inferior (a): ');
b = input('Límite superior (b): ');
n = input('Número de intervalos (n): ');

% Generar puntos para la gráfica suave
x_plot = linspace(a, b, 1000);
y_plot = f(x_plot);

% Calcular integral numérica usando método del trapecio
h = (b - a)/n;
x_trap = linspace(a, b, n+1);
y_trap = f(x_trap);
integral = h/2 * (y_trap(1) + 2*sum(y_trap(2:end-1)) + y_trap(end));

% Mostrar resultados gráficos
figure;
plot(x_plot, y_plot, 'b-', 'LineWidth', 1.5);
hold on;
area(x_trap, y_trap, 'FaceColor', [0.8 0.9 1], 'EdgeColor', 'none');
title(['Integral aproximada: ', num2str(integral)]);
xlabel('x');
ylabel('f(x)');
legend('Función', 'Área integrada', 'Location', 'best');
grid on;

% Mostrar resultado numérico en consola
fprintf('\nResultado de la integral:\n');
fprintf('Desde %g hasta %g\n', a, b);
fprintf('Método del trapecio (%d intervalos): %.4f\n', n, integral);