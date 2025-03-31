% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% muestra las soluciones y grafica la parábola con sus raíces y vértice destacados.

clc; clear; close all;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si es ecuación cuadrática
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante calculado: %.2f\n', discriminante);

% Determinar tipo de raíces y calcular soluciones
if discriminante > 0
    fprintf('Dos raíces reales distintas\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    fprintf('Una raíz real doble\n');
    x1 = -b/(2*a);
    x2 = x1;
else
    fprintf('Raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    x1 = complex(realPart, imagPart);
    x2 = complex(realPart, -imagPart);
end

% Mostrar soluciones
fprintf('\nSoluciones:\n');
fprintf('x1 = %s\n', num2str(x1));
fprintf('x2 = %s\n\n', num2str(x2));

% Calcular vértice de la parábola
verticeX = -b/(2*a);
verticeY = a*verticeX^2 + b*verticeX + c;

% Generar puntos para la gráfica
x = linspace(verticeX-5, verticeX+5, 400);
y = a*x.^2 + b*x + c;

% Configurar y mostrar gráfica
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;

% Marcar vértice
plot(verticeX, verticeY, 'ro', 'MarkerSize', 8, 'LineWidth', 2);

% Marcar raíces reales si existen
if isreal(x1)
    plot([x1, x2], [0, 0], 'ks', 'MarkerSize', 8, 'LineWidth', 2);
    legend('Parábola', 'Vértice', 'Raíces', 'Location','best');
else
    legend('Parábola', 'Vértice', 'Location','best');
    text(verticeX, verticeY+0.1*verticeY, 'Sin raíces reales', 'HorizontalAlignment','center');
end

% Configuración adicional del gráfico
title(['Gráfica de y = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('Eje X');
ylabel('Eje Y');
xlim([min(x), max(x)]);