% Programa que resuelve una ecuación cuadrática y grafica la función
clear; clc;

% Entrada de coeficientes
disp('Resuelve ax² + bx + c = 0');
a = input('a = ');
b = input('b = ');
c = input('c = ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Cálculo de raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif discriminante == 0
    x = -b/(2*a);
    disp(['Raíz única: x = ', num2str(x)]);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    disp(['Raíces complejas: x = ', num2str(realPart), ' ± ', num2str(imagPart), 'i']);
end

% Graficación de la función
x_vals = linspace(-10, 10, 400);
y_vals = a*x_vals.^2 + b*x_vals + c;

figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 2);
hold on;
title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x');
ylabel('f(x)');
grid on;

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante > 0
        plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 10);
    else
        plot(x, 0, 'ro', 'MarkerSize', 10);
    end
end
hold off;