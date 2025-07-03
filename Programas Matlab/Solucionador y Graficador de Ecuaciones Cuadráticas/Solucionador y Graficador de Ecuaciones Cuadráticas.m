% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% muestra sus raíces y grafica la función en el dominio real.

clc; clear; close all;  % Inicializar entorno

% Entrada interactiva de coeficientes
coeficientes = inputdlg({'a:','b:','c:'}, 'Ingrese coeficientes', [1 50]);
a = str2double(coeficientes{1});
b = str2double(coeficientes{2});
c = str2double(coeficientes{3});

% Verificar coeficiente principal
if a == 0
    error('No es ecuación cuadrática (a ≠ 0 requerido)');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante >= 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Raíces reales:\n x1 = %.2f\n x2 = %.2f\n', x1, x2);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Configurar dominio para gráfico
x = linspace(-10, 10, 1000);  % Rango [-10,10] con 1000 puntos
y = a*x.^2 + b*x + c;

% Graficar función
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;
title(['f(x) = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x'); ylabel('f(x)');

% Destacar raíces reales si existen
if discriminante >= 0
    plot([x1, x2], [0, 0], 'r*', 'MarkerSize', 10);
    legend('Función cuadrática', 'Raíces reales', 'Location', 'best');
end