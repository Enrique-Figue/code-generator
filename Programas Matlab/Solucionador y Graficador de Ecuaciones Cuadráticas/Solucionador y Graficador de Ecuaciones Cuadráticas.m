% Descripción: Calcula las raíces de una ecuación cuadrática y grafica la función
% Autor: Tutor de MATLAB
% Fecha: 15/09/2023

%% Entrada de usuario
coeficientes = inputdlg({'a (coeficiente x²):', 'b (coeficiente x):', 'c (término independiente):'}, 'Ingrese coeficientes', [1 30]);
a = str2double(coeficientes{1});
b = str2double(coeficientes{2});
c = str2double(coeficientes{3});

%% Validación y cálculos
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
end

discriminante = b^2 - 4*a*c;
x_vertice = -b/(2*a);
y_vertice = a*x_vertice^2 + b*x_vertice + c;

%% Cálculo de raíces
if discriminante >= 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    raices_str = sprintf('Raíces reales:\n  x1 = %.2f\n  x2 = %.2f', x1, x2);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    raices_str = sprintf('Raíces complejas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi',...
        parte_real, parte_imag, parte_real, parte_imag);
end

%% Resultados numéricos
fprintf('=== RESULTADOS ===\n');
fprintf('Ecuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante: %.2f\n', discriminante);
fprintf('%s\n', raices_str);
fprintf('Vértice: (%.2f, %.2f)\n\n', x_vertice, y_vertice);

%% Visualización gráfica
x = linspace(x_vertice-5, x_vertice+5, 400);
y = a*x.^2 + b*x + c;

figure('Name','Gráfico Cuadrático','NumberTitle','off');
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(x_vertice, y_vertice, 'kh', 'MarkerSize', 10, 'MarkerFaceColor', 'y');
title(sprintf('y = %.2fx² + %.2fx + %.2f', a, b, c));
xlabel('x'); ylabel('y');
grid on; legend('Función cuadrática','Vértice');

if discriminante >= 0
    plot([x1 x2], [0 0], 'r*', 'MarkerSize', 10, 'LineWidth', 2);
    legend('Función cuadrática','Vértice','Raíces reales');
end