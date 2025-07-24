% Este programa implementa el método de Newton-Raphson para encontrar raíces de funciones
% y muestra pasos iterativos junto con visualización gráfica para fines educativos

clc; clear; close all;

% Definir la función y su derivada (modificables por el usuario)
f = @(x) x^3 - 2*x - 5;    % Función a resolver
df = @(x) 3*x^2 - 2;       % Derivada de la función

% Parámetros iniciales (modificables por el usuario)
x0 = 2;                    % Valor inicial
tolerancia = 1e-6;         % Criterio de convergencia
max_iter = 50;             % Límite de iteraciones

% Inicializar variables
error = Inf;
iter = 0;
historial = [x0];          % Almacena el historial de aproximaciones

% Encabezado de resultados
fprintf('Método de Newton-Raphson\n');
fprintf('Iter\tAproximación\tError\n');
fprintf('----------------------------\n');

% Algoritmo principal
while error > tolerancia && iter < max_iter
    iter = iter + 1;
    x_nuevo = x0 - f(x0)/df(x0);
    error = abs(x_nuevo - x0);
    historial(end+1) = x_nuevo; %#ok<AGROW>
    
    % Mostrar progreso
    fprintf('%2d\t%10.6f\t%10.6f\n', iter, x_nuevo, error);
    
    % Actualizar valor
    x0 = x_nuevo;
end

% Resultados finales
fprintf('\nSolución encontrada: %.6f\n', x0);
fprintf('Iteraciones totales: %d\n', iter);

% Visualización gráfica
figure;

% Subplot 1: Función y raíz
subplot(1,2,1);
x_vals = linspace(min(historial)-1, max(historial)+1, 100);
plot(x_vals, f(x_vals), 'b', 'LineWidth', 1.5);
hold on;
plot(historial, f(historial), 'ro--', 'MarkerSize', 8);
plot(x0, 0, 'g*', 'MarkerSize', 15);
xlabel('x'); ylabel('f(x)');
title('Función y Aproximaciones');
legend('f(x)', 'Iteraciones', 'Raíz', 'Location','Best');
grid on;

% Subplot 2: Convergencia del error
subplot(1,2,2);
semilogy(1:iter, abs(diff(historial)), 'm^-', 'LineWidth', 1.5);
xlabel('Iteración'); ylabel('Error');
title('Convergencia del Error');
grid on;

% Ajustar diseño
set(gcf, 'Position', [100 100 1200 500]);