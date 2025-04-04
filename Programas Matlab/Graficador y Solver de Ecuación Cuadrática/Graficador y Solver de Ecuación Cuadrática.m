% Descripción: Este programa calcula las raíces y vértice de una ecuación cuadrática,
%              grafica la parábola correspondiente y muestra los resultados numéricamente.
%              Permite al usuario ingresar los coeficientes a, b, c y valida la entrada.

close all; clc;  % Cerrar ventanas previas y limpiar consola

disp('Este programa resuelve una ecuación cuadrática ax² + bx + c = 0 y grafica la parábola.');

% Solicitar coeficientes al usuario, validando que a no sea cero
a = 0;
while a == 0
    a = input('Ingrese el coeficiente a (no puede ser cero): ');
    if a == 0
        disp('El coeficiente a no puede ser cero para una ecuación cuadrática.');
    end
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    roots_str = sprintf('Raíces reales: x1 = %.2f, x2 = %.2f', x1, x2);
elseif discriminante == 0
    x1 = -b/(2*a);
    roots_str = sprintf('Raíz única real: x = %.2f', x1);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    roots_str = sprintf('Raíces complejas: x1 = %.2f + %.2fi, x2 = %.2f - %.2fi', realPart, imagPart, realPart, imagPart);
end

% Calcular vértice de la parábola
vertice_x = -b/(2*a);
vertice_y = a*(vertice_x)^2 + b*vertice_x + c;

% Crear vector x alrededor del vértice para graficar
x = linspace(vertice_x - 5, vertice_x + 5, 400);
y = a*x.^2 + b*x + c;

% Graficar la parábola
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(vertice_x, vertice_y, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % Marcar vértice
title('Gráfico de la Ecuación Cuadrática');
xlabel('x');
ylabel('f(x)');
grid on;
legend('Parábola', 'Vértice', 'Location', 'best');

% Mostrar información en consola
fprintf('\nResultados:\n');
fprintf('-----------------------------\n');
fprintf('%s\n', roots_str);
fprintf('Vértice: (%.2f, %.2f)\n', vertice_x, vertice_y);