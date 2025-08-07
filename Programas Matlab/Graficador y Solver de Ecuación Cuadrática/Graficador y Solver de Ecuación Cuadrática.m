% Descripción: Este programa calcula las raíces de una ecuación cuadrática y grafica la función.
%              Solicita al usuario los coeficientes a, b, c y muestra resultados numéricos y gráficos.

clc; close all;  % Limpiar consola y cerrar figuras anteriores

disp('Solución de la ecuación cuadrática ax² + bx + c = 0');

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif discriminante == 0
    x1 = -b/(2*a);
    disp(['Raíz única: x = ', num2str(x1)]);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, ',...
          'x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
end

% Generar puntos para la gráfica
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

% Graficar función
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;
xlabel('x');
ylabel('f(x)');
title(['f(x) = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);

% Marcar vértice y raíces si son reales
verticeX = -b/(2*a);
verticeY = a*verticeX^2 + b*verticeX + c;
plot(verticeX, verticeY, 'ro', 'MarkerSize', 8, 'DisplayName', 'Vértice');

if discriminante >= 0
    plot(x1, 0, 'ks', 'MarkerSize', 8, 'DisplayName', 'Raíces');
    if discriminante > 0
        plot(x2, 0, 'ks', 'MarkerSize', 8);
    end
end

legend('show');