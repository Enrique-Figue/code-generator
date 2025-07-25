clc; clear; close all;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente cuadrático (a): ');
b = input('Ingrese el coeficiente lineal (b): ');
c = input('Ingrese el término independiente (c): ');

% Verificar si es ecuación cuadrática
if a == 0
    error('La ecuación no es cuadrática (a = 0)');
end

% Calcular discriminante
D = b^2 - 4*a*c;

% Calcular raíces y vértice
if D > 0
    % Dos raíces reales distintas
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
    tipo_raices = 'dos raíces reales distintas';
elseif D == 0
    % Una raíz real doble
    x1 = -b/(2*a);
    x2 = x1;
    tipo_raices = 'una raíz real doble';
else
    % Raíces complejas conjugadas
    x1 = (-b + sqrt(complex(D)))/(2*a);
    x2 = (-b - sqrt(complex(D)))/(2*a);
    tipo_raices = 'raíces complejas conjugadas';
end

% Calcular coordenadas del vértice
h = -b/(2*a);
k = a*h^2 + b*h + c;

% Generar puntos para la gráfica
x = linspace(h-5, h+5, 1000);
y = a*x.^2 + b*x + c;

% Graficar parábola
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
grid on;
title('Gráfica de la Función Cuadrática');
xlabel('x');
ylabel('f(x)');

% Marcar raíces y vértice si son reales
if D >= 0
    plot([x1 x2], [0 0], 'ro', 'MarkerSize', 10, 'LineWidth', 2);
end
plot(h, k, 'gs', 'MarkerSize', 10, 'LineWidth', 2);

legend('Función', 'Raíces', 'Vértice', 'Location', 'best');

% Mostrar resultados en consola
fprintf('\nRESULTADOS:\n');
fprintf('Tipo de raíces: %s\n', tipo_raices);
if D >= 0
    fprintf('Raíz 1: %.2f\n', x1);
    fprintf('Raíz 2: %.2f\n', x2);
else
    fprintf('Raíz 1: %.2f + %.2fi\n', real(x1), imag(x1));
    fprintf('Raíz 2: %.2f - %.2fi\n', real(x2), imag(x2));
end
fprintf('Vértice: (%.2f, %.2f)\n', h, k);