clc; clear;

% Solicitar coeficientes al usuario
try
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
catch
    error('Entrada no válida. Use valores numéricos');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Mostrar información de la ecuación
fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante: %.2f\n', discriminante);

% Calcular y mostrar raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n  x1 = %.2f\n  x2 = %.2f\n', x1, x2);
elseif discriminante == 0
    x = -b/(2*a);
    fprintf('Una raíz real doble:\n  x = %.2f\n', x);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    fprintf('Raíces complejas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Graficar función cuadrática
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

figure;
plot(x, y, 'LineWidth', 2);
title('Gráfico de la Función Cuadrática');
xlabel('x'); ylabel('f(x)');
grid on; hold on;

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante > 0
        plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 10);
    else
        plot(x, zeros(size(x)), 'r--');
        plot(x1, 0, 'ro', 'MarkerSize', 10);
    end
end
legend('Función cuadrática', 'Raíces reales');
hold off;