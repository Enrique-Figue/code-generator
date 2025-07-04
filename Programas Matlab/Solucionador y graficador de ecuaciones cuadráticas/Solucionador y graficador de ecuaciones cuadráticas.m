clear;
clc;
close all;

fprintf('SOLUCIÓN DE ECUACIONES CUADRÁTICAS Y REPRESENTACIÓN GRÁFICA\n\n');

% Solicitar coeficientes al usuario
a = input('Introduzca el coeficiente cuadrático (a): ');
if a == 0
    error('Error: El coeficiente "a" no puede ser cero en una ecuación cuadrática.');
end

b = input('Introduzca el coeficiente lineal (b): ');
c = input('Introduzca el coeficiente constante (c): ');

% Calcular discriminante y raíces
discriminante = b^2 - 4*a*c;
vertice_x = -b/(2*a);
vertice_y = a*vertice_x^2 + b*vertice_x + c;

% Determinar tipo de raíces y mostrarlas
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('\nRaíces reales y diferentes:\n  x1 = %.2f\n  x2 = %.2f\n', x1, x2);
elseif discriminante == 0
    x1 = -b/(2*a);
    fprintf('\nRaíz real única:\n  x = %.2f\n', x1);
else
    real_part = -b/(2*a);
    imag_part = sqrt(-discriminante)/(2*a);
    fprintf('\nRaíces complejas conjugadas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi\n', real_part, imag_part, real_part, imag_part);
end

% Generar datos para la gráfica
x = linspace(vertice_x-5, vertice_x+5, 400);
y = a*x.^2 + b*x + c;

% Configurar gráfico
figure;
plot(x, y, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Función cuadrática');
hold on;

% Marcar características importantes
if discriminante >= 0
    if discriminante == 0
        plot(x1, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'DisplayName', 'Raíz única');
    else
        plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r', 'DisplayName', 'Raíces reales');
    end
end
plot(vertice_x, vertice_y, 'gh', 'MarkerSize', 10, 'MarkerFaceColor', 'g', 'DisplayName', 'Vértice');

% Añadir detalles finales
title('Gráfica de la función cuadrática');
xlabel('Eje x');
ylabel('f(x)');
grid on;
legend('Location', 'northwest');
hold off;