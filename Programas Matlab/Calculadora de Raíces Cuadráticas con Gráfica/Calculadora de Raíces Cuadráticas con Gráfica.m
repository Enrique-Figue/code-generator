% Descripción: Este programa calcula las raíces de una ecuación cuadrática y gráfica la función.
% Solicita los coeficientes al usuario, calcula el discriminante y muestra resultados según su naturaleza.

clc;
clear;
close all;

% Entrada de coeficientes
disp('Ingrese los coeficientes de la ecuación ax² + bx + c = 0:');
a = input('Coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero para una ecuación cuadrática.');
end
b = input('Coeficiente b: ');
c = input('Coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Preparación de la ecuación para mostrar
fprintf('\nEcuación ingresada: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);

% Cálculo de raíces y mensajes correspondientes
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n  x1 = %.4f\n  x2 = %.4f\n', raiz1, raiz2);
    
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n  x = %.4f\n', raiz);
    
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas conjugadas:\n');
    fprintf('  x1 = %.4f + %.4fi\n  x2 = %.4f - %.4fi\n', parte_real, parte_imag, parte_real, parte_imag);
end

% Creación de la gráfica
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

figure('Color', 'white');
plot(x, y, 'b', 'LineWidth', 2);
hold on;
grid on;
title(sprintf('Gráfica de: %.2fx² + %.2fx + %.2f', a, b, c));
xlabel('x');
ylabel('f(x)');

% Marcar raíces reales si existen
if discriminante >= 0
    raices = roots([a b c]);
    plot(raices, zeros(size(raices)), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    legend('Función cuadrática', 'Raíces', 'Location', 'best');
else
    legend('Función cuadrática', 'Location', 'best');
end

% Ajustar ejes para mejor visualización
ylim([min(y)-1, max(y)+1]);