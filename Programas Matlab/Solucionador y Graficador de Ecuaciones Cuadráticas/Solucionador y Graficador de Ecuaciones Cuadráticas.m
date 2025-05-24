% Descripción: Este programa calcula las raíces de una ecuación cuadrática
% y grafica la función en el rango correspondiente.

clc; clear; % Limpia la consola y variables

% Entrada de coeficientes
disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Cálculo de raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Raíces reales distintas:\nx1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif discriminante == 0
    x = -b/(2*a);
    fprintf('Raíz real única:\nx = %.2f\n', x);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas:\nx1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Generación de puntos para la gráfica
x_vals = linspace(-10, 10, 400); % Rango de valores x
y_vals = a*x_vals.^2 + b*x_vals + c; % Evaluación de la función

% Configuración de la gráfica
figure;
plot(x_vals, y_vals, 'LineWidth', 2);
hold on;
title('Gráfico de la función cuadrática');
xlabel('x');
ylabel('f(x)');
grid on;

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante > 0
        plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
        legend('Función cuadrática', 'Raíces reales', 'Location', 'best');
    else
        plot(x, 0, 'ro', 'MarkerSize', 8);
        legend('Función cuadrática', 'Raíz única', 'Location', 'best');
    end
end

hold off;