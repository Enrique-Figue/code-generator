% Descripción: Este programa solicita coeficientes de una función cuadrática,
% calcula sus raíces, vértice y grafica la parábola resultante.

clc; clear; close all;

% Solicitar coeficientes con validación para 'a'
a = 0;
while a == 0
    a = input('Ingrese el coeficiente cuadrático (a ≠ 0): ');
    if a == 0
        disp('Error: El coeficiente "a" no puede ser cero. Intente nuevamente.');
    end
end
b = input('Ingrese el coeficiente lineal (b): ');
c = input('Ingrese el término independiente (c): ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante >= 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    raices = [x1, x2];
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    raices = [realPart + imagPart*1i, realPart - imagPart*1i];
end

% Calcular vértice
verticeX = -b/(2*a);
verticeY = a*verticeX^2 + b*verticeX + c;

% Generar puntos para la gráfica
x = linspace(verticeX-5, verticeX+5, 400);
y = a*x.^2 + b*x + c;

% Configurar gráfica
figure('Color','white');
plot(x, y, 'LineWidth', 2, 'Color', [0.2 0.6 0.8]);
hold on;
grid on;
xlabel('x');
ylabel('f(x)');
title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);

% Marcar vértice
scatter(verticeX, verticeY, 100, 'r', 'filled', 'MarkerEdgeColor','k');
text(verticeX, verticeY, sprintf(' Vértice\n (%.2f, %.2f)', verticeX, verticeY),...
    'VerticalAlignment','bottom', 'FontWeight','bold');

% Marcar raíces reales si existen
if isreal(raices)
    scatter(raices, zeros(1,2), 100, [0.9 0.4 0.1], 'filled', 'MarkerEdgeColor','k');
    text(raices(1), 0, sprintf(' Raíz 1\n %.2f', raices(1)),...
        'HorizontalAlignment','center', 'VerticalAlignment','top');
    text(raices(2), 0, sprintf(' Raíz 2\n %.2f', raices(2)),...
        'HorizontalAlignment','center', 'VerticalAlignment','top');
end

% Mostrar información en consola
fprintf('\nAnálisis de la función:\n');
fprintf('Raíces: %s\n', mat2str(raices,3));
fprintf('Vértice en (%.2f, %.2f)\n', verticeX, verticeY);
fprintf('La parábola abre hacia %s\n', string(a>0).replace({'1','0'},{'arriba','abajo'}));