clear; close all; clc;

% Parámetros de entrada
a = 0;
b = pi;
n = 10;
f = @(x) sin(x);

% Generar puntos para graficar la función
x_plot = linspace(a, b, 1000);
y_plot = f(x_plot);

% Calcular integral aproximada y puntos de Riemann
[integral_approx, x_bar, y_bar] = riemann_integral(f, a, b, n);

% Graficar la función y las sumas de Riemann
figure;
hold on;
plot(x_plot, y_plot, 'b', 'LineWidth', 2); % Función original
dx = (b - a)/n;
for i = 1:n
    x_left = a + (i-1)*dx;
    rectangle('Position', [x_left, 0, dx, y_bar(i)], ...
              'EdgeColor', 'r', 'FaceColor', 'none');
end
xlabel('x');
ylabel('f(x)');
title(['Integral Aproximada: ', num2str(integral_approx), ...
       ' (n = ', num2str(n), ')']);
legend('f(x) = sin(x)', 'Aproximación Riemann', 'Location', 'NorthEast');
grid on;
hold off;

% Resultados numéricos
exact_integral = 2; % Integral exacta de sin(x) de 0 a pi
error = abs(integral_approx - exact_integral);
fprintf('Aproximación: %f\nIntegral Exacta: %f\nError: %f\n', ...
        integral_approx, exact_integral, error);

% Función de integración numérica por sumas de Riemann (punto derecho)
function [integral, x_bar, y_bar] = riemann_integral(f, a, b, n)
    % Esta función calcula la integral de f en [a,b] usando n rectángulos
    dx = (b - a)/n; % Ancho de cada subintervalo
    x_bar = a + dx*(1:n); % Puntos derechos de cada subintervalo
    y_bar = f(x_bar); % Evaluar f en los puntos derechos
    integral = sum(y_bar * dx); % Sumar áreas de rectángulos
end