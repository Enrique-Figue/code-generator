% Descripción: Resuelve una ecuación cuadrática ax² + bx + c = 0 y grafica la función,
% mostrando raíces reales, vértice y dirección de la parábola.

clc;
clear;
close all;

% Entrada de coeficientes
a = input('Ingrese coeficiente cuadrático (a): ');
b = input('Ingrese coeficiente lineal (b): ');
c = input('Ingrese término independiente (c): ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;
vertice_x = -b/(2*a);
vertice_y = a*(vertice_x)^2 + b*vertice_x + c;

% Resolución de raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n x1 = %.2f\n x2 = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n x = %.2f\n', raiz);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Creación del gráfico
x = linspace(vertice_x-abs(vertice_x)-5, vertice_x+abs(vertice_x)+5, 400);
y = a*x.^2 + b*x + c;

figure;
plot(x, y, 'LineWidth', 2, DisplayName='Función cuadrática');
hold on;
scatter(vertice_x, vertice_y, 100, 'filled', 'r', ...
    DisplayName='Vértice', MarkerEdgeColor='k');

if discriminante >= 0
    if discriminante > 0
        scatter([raiz1 raiz2], [0 0], 100, 'g', 'filled', ...
            DisplayName='Raíces reales', MarkerEdgeColor='k');
    else
        scatter(raiz, 0, 100, 'g', 'filled', ...
            DisplayName='Raíz doble', MarkerEdgeColor='k');
    end
end

title(['Función: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x');
ylabel('f(x)');
grid on;
legend;
hold off;