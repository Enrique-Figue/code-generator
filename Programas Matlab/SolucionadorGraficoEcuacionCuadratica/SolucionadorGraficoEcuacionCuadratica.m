clear;
clc;

% Entrada de coeficientes
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Cálculo de discriminante y raíces
D = b^2 - 4*a*c;
root1 = (-b + sqrt(D)) / (2*a);
root2 = (-b - sqrt(D)) / (2*a);

% Tipo de raíces
if D > 0
    root_type = 'reales y distintas';
elseif D == 0
    root_type = 'reales e iguales';
else
    root_type = 'complejas conjugadas';
end

% Coordenadas del vértice
xv = -b/(2*a);
yv = a*xv^2 + b*xv + c;

% Generación de puntos para la gráfica
x = linspace(xv - 10, xv + 10, 500);
y = a*x.^2 + b*x + c;

% Configuración de la gráfica
figure;
plot(x, y, 'LineWidth', 2);
hold on;
plot(xv, yv, 'gs', 'MarkerSize', 10, 'LineWidth', 2); % Vértice
if D >= 0
    plot([root1, root2], [0, 0], 'ro', 'MarkerSize', 10, 'LineWidth', 2); % Raíces reales
end
title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x');
ylabel('f(x)');
grid on;

% Leyenda adaptativa
if D >= 0
    legend('Función', 'Vértice', 'Raíces', 'Location', 'best');
else
    legend('Función', 'Vértice', 'Location', 'best');
end

% Resultados en consola
fprintf('\nRESULTADOS:\n');
fprintf('Discriminante: %.2f\n', D);
fprintf('Tipo de raíces: %s\n', root_type);
fprintf('Raíz 1: %s\n', num2str(root1, '%.4f'));
fprintf('Raíz 2: %s\n', num2str(root2, '%.4f'));
fprintf('Vértice: (%.2f, %.2f)\n', xv, yv);

hold off;