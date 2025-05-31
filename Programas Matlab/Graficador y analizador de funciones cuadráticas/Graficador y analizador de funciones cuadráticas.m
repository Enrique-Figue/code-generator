% Descripción: Este programa calcula y grafica una función cuadrática, mostrando sus características principales.

clc; clear; close all;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente cuadrático (a): ');
b = input('Ingrese el coeficiente lineal (b): ');
c = input('Ingrese el término independiente (c): ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces usando fórmula cuadrática
if discriminante >= 0
    raiz1 = (-b + sqrt(discriminante)) / (2*a);
    raiz2 = (-b - sqrt(discriminante)) / (2*a);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(-discriminante)/(2*a);
    raiz1 = complex(parte_real, parte_imag);
    raiz2 = complex(parte_real, -parte_imag);
end

% Calcular vértice de la parábola
x_vertice = -b/(2*a);
y_vertice = a*x_vertice^2 + b*x_vertice + c;

% Determinar rango de visualización
if discriminante >= 0 && isreal(raiz1)
    x = linspace(min(raiz1, raiz2)-2, max(raiz1, raiz2)+2, 400);
else
    x = linspace(x_vertice-5, x_vertice+5, 400);
end

% Evaluar función cuadrática
y = a*x.^2 + b*x + c;

% Graficar la función
figure;
plot(x, y, 'b', 'LineWidth', 2);
hold on;
plot(x_vertice, y_vertice, 'ro', 'MarkerSize', 8);
title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('Eje X');
ylabel('Eje Y');
grid on;
legend('Función cuadrática', 'Vértice', 'Location', 'best');

% Mostrar información en consola
fprintf('\nCaracterísticas de la función:\n');
fprintf('1. Vértice en (%0.2f, %0.2f)\n', x_vertice, y_vertice);
fprintf('2. Dirección de apertura: %s\n', ...
    ternary(a > 0, 'Hacia arriba (cóncava)', 'Hacia abajo (convexa)'));
fprintf('3. Raíces:\n   - Raíz 1: %s\n   - Raíz 2: %s\n', ...
    formatComplex(raiz1), formatComplex(raiz2));

% Funciones auxiliares
function str = formatComplex(num)
    if imag(num) == 0
        str = sprintf('%.2f', real(num));
    else
        str = sprintf('%.2f %+.2fi', real(num), imag(num));
    end
end

function result = ternary(condition, trueVal, falseVal)
    if condition
        result = trueVal;
    else
        result = falseVal;
    end
end