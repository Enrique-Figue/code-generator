% Descripción: Calcula las raíces de una ecuación cuadrática y grafica la función.
%              Incluye manejo de números complejos y visualización educativa.

clc; clear; close all;

% Entrada de coeficientes (ax² + bx + c)
coeficientes = input('Ingrese coeficientes [a, b, c]: ');
while numel(coeficientes) ~= 3
    disp('¡Error! Debe ingresar 3 coeficientes');
    coeficientes = input('Ingrese coeficientes [a, b, c]: ');
end
a = coeficientes(1);
b = coeficientes(2);
c = coeficientes(3);

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Cálculo de raíces
if discriminante >= 0
    r1 = (-b + sqrt(discriminante))/(2*a);
    r2 = (-b - sqrt(discriminante))/(2*a);
else
    r1 = (-b + sqrt(complex(discriminante)))/(2*a);
    r2 = (-b - sqrt(complex(discriminante)))/(2*a);
end

% Mostrar resultados
fprintf('Raíz 1: %.2f\n', r1);
fprintf('Raíz 2: %.2f\n', r2);

% Generar puntos para la gráfica
x = linspace(min([real(r1), real(r2), 0])-2, max([real(r1), real(r2), 0])+2, 400);
y = a*x.^2 + b*x + c;

% Configurar figura
figure('Color', 'white');
plot(x, y, 'LineWidth', 2);
hold on;
grid on;

% Marcar raíces y vértice
plot(real(r1), 0, 'r*', 'MarkerSize', 10);
plot(real(r2), 0, 'r*', 'MarkerSize', 10);
plot(-b/(2*a), a*(-b/(2*a))^2 + b*(-b/(2*a)) + c, 'go', 'MarkerSize', 8);

% Leyendas y formatos
title(['Función: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x');
ylabel('f(x)');
legend('Función cuadrática', 'Raíces', 'Vértice', 'Location', 'best');
axis tight;