clc; clear; close all;

% Solicitar coeficientes al usuario
a = input('Introduzca el coeficiente a: ');
while a == 0
    a = input('a no puede ser cero. Ingrese nuevo valor de a: ');
end
b = input('Introduzca el coeficiente b: ');
c = input('Introduzca el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Determinar tipo de raíces y calcularlas
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Dos raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif discriminante == 0
    x = -b/(2*a);
    disp(['Raíz única real: x = ', num2str(x)]);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
end

% Graficar la función cuadrática
x = linspace(-b/(2*a)-5, -b/(2*a)+5, 400); % Rango centrado en el vértice
y = a*x.^2 + b*x + c;

figure;
plot(x, y, 'LineWidth', 1.5);
hold on;
title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x');
ylabel('f(x)');
grid on;

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante == 0
        plot(x, zeros(size(x)), 'k--');
        plot(x, a*x.^2 + b*x + c, 'b');
        plot(x, x*0, 'k--');
        plot(x(200), y(200), 'ro', 'MarkerSize', 8);
    else
        plot(x1, 0, 'ro', x2, 0, 'ro', 'MarkerSize', 8);
    end
    legend('Función', 'Raíces', 'Location', 'best');
else
    legend('Función', 'Location', 'best');
end
hold off;