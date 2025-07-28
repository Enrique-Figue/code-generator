clc; clear;  % Limpiar pantalla y workspace

% Solicitar coeficientes de la ecuación
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar ecuación cuadrática válida
if a == 0
    error('El coeficiente a debe ser diferente de cero para una ecuación cuadrática.');
end

% Calcular discriminante
D = b^2 - 4*a*c;
fprintf('\nDiscriminante calculado: %.2f\n', D);

% Determinar naturaleza de las raíces
if D > 0
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
    fprintf('Dos raíces reales:\nx1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif D == 0
    x1 = -b/(2*a);
    fprintf('Una raíz real doble:\nx = %.2f\n', x1);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-D)/(2*a);
    fprintf('Raíces complejas conjugadas:\nx1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Crear vector x alrededor del vértice
x_vertice = -b/(2*a);
x = linspace(x_vertice-5, x_vertice+5, 400);

% Calcular valores y correspondientes
y = a*x.^2 + b*x + c;

% Graficar parábola
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;
title(sprintf('y = %.2fx² + %.2fx + %.2f', a, b, c));
xlabel('x'); ylabel('y'); grid on;

% Marcar raíces reales si existen
if D >= 0
    if D > 0
        plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8, 'LineWidth', 2);
        legend('Parábola', 'Raíces', 'Location', 'best');
    else
        plot(x1, 0, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
        legend('Parábola', 'Raíz doble', 'Location', 'best');
    end
end
hold off;