% Descripción: Este programa solicita coeficientes de una función cuadrática,
% calcula sus raíces, vértice y dirección, luego grafica la función resultante.

clc; clear; close all;

% Solicitar coeficientes al usuario
disp('Ingrese coeficientes de la función cuadrática ax² + bx + c:');
a = input('Coeficiente a: ');
while a == 0  % Validar que sea función cuadrática
    disp('El coeficiente "a" no puede ser cero');
    a = input('Ingrese nuevamente el coeficiente a: ');
end
b = input('Coeficiente b: ');
c = input('Coeficiente c: ');

% Calcular discriminante y raíces
discriminante = b^2 - 4*a*c;
if discriminante >= 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    raiz1 = complex(parte_real, parte_imag);
    raiz2 = complex(parte_real, -parte_imag);
end

% Calcular coordenadas del vértice
x_vertice = -b/(2*a);
y_vertice = a*x_vertice^2 + b*x_vertice + c;

% Determinar dirección de apertura
direccion = '';
if a > 0
    direccion = 'hacia arriba';
else
    direccion = 'hacia abajo';
end

% Mostrar resultados numéricos
fprintf('\nResultados:\n');
fprintf('Raíz 1: %s\n', num2str(raiz1));
fprintf('Raíz 2: %s\n', num2str(raiz2));
fprintf('Vértice en (%.2f, %.2f)\n', x_vertice, y_vertice);
fprintf('La parábola abre %s\n\n', direccion);

% Configurar rango de gráfico
x = linspace(x_vertice-5, x_vertice+5, 400);
y = a*x.^2 + b*x + c;

% Graficar función
figure('Color', 'white');
plot(x, y, 'LineWidth', 2, 'DisplayName', 'Función cuadrática');
hold on;
grid on;

% Marcar vértice y raíces reales
plot(x_vertice, y_vertice, 'ro', 'MarkerSize', 8, 'DisplayName', 'Vértice');
if discriminante >= 0
    plot(raiz1, 0, 'gs', 'MarkerSize', 8, 'DisplayName', 'Raíces reales');
    plot(raiz2, 0, 'gs', 'MarkerSize', 8, 'HandleVisibility', 'off');
end

% Configuraciones gráficas
title(sprintf('Gráfico de: %.2fx² + %.2fx + %.2f', a, b, c));
xlabel('Eje X'); ylabel('Eje Y');
legend('Location', 'best');
axis tight;
ax = gca;
ax.XAxisLocation = 'origin';  % Eje X en y=0
ax.YAxisLocation = 'origin';  % Eje Y en x=0