% Descripción: Este programa calcula y grafica el área bajo la curva de una función matemática
% utilizando el método del trapecio, permitiendo al usuario definir los parámetros de entrada.

clc; clear; close all;

%% Parámetros configurables por el usuario
f = @(x) sin(x);      % Función a integrar (modificar para diferentes funciones)
a = 0;                % Límite inferior de integración
b = pi;               % Límite superior de integración
n = 10;               % Número de trapecios para la aproximación

%% Validación de entrada
if b <= a
    error('El límite superior debe ser mayor que el inferior');
end
if n <= 0
    error('El número de trapecios debe ser positivo');
end

%% Cálculo del área usando regla del trapecio
h = (b - a)/n;          % Ancho de cada trapecio
x = linspace(a, b, n+1); % Puntos de división
y = f(x);               % Evaluación de la función

% Fórmula compuesta del trapecio
suma_interiores = sum(y(2:end-1));
area = (h/2) * (y(1) + 2*suma_interiores + y(end));

%% Visualización de resultados
figure('Color', 'white');
xx = linspace(a, b, 1000);  % Puntos para gráfico suave
plot(xx, f(xx), 'b-', 'LineWidth', 2); % Gráfica de la función original
hold on;
area(x, y, 'FaceColor', [0.8 0.9 1], 'EdgeColor', 'none'); % Área aproximada
title(['Área bajo la curva: ', func2str(f)], 'FontSize', 12);
xlabel('x', 'FontWeight', 'bold');
ylabel('f(x)', 'FontWeight', 'bold');
legend({'Función real','Área aproximada'}, 'Location', 'northwest');
grid on;

%% Mostrar resultado numérico
fprintf('---------------------------------------\n');
fprintf(' Área aproximada: %.4f\n', area);
fprintf('---------------------------------------\n');