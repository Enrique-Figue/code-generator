% Descripción: Grafica una función matemática, su derivada y calcula el área bajo la curva
%              usando integración numérica. Incluye interfaz de usuario básica.

clc; clear; close all;

% Solicitar entrada de usuario
funcion = input('Ingrese la función f(x) (ej. @(x) sin(x)): ');
x_inicio = input('Ingrese el valor inicial de x: ');
x_fin = input('Ingrese el valor final de x: ');

% Generar datos para gráfico
x = linspace(x_inicio, x_fin, 1000);
y = funcion(x);

% Calcular derivada numéricamente
h = 1e-5; % Pequeño incremento para diferenciación
dy = (funcion(x + h) - funcion(x - h)) / (2*h); % Derivada central

% Calcular área usando regla del trapecio
area = trapz(x, y);

% Configurar figura
figure('Color', 'white', 'Name', 'Análisis de Función');
subplot(2,1,1);

% Graficar función y derivada
plot(x, y, 'b', 'LineWidth', 2);
hold on;
plot(x, dy, 'r--', 'LineWidth', 1.5);
hold off;
grid on;
title(['Función: ' func2str(funcion)]);
xlabel('x');
ylabel('f(x)');
legend('Función original', 'Derivada', 'Location', 'best');

% Mostrar área en subtítulo
dim = [.15 .6 .3 .3];
str = sprintf('Área bajo la curva: %.4f', area);
annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on', 'BackgroundColor', 'white');

% Gráfico de área bajo la curva
subplot(2,1,2);
area(x, y, 'FaceColor', [0.7 0.9 0.7], 'EdgeColor', 'none');
grid on;
title('Área bajo la curva');
xlabel('x');
ylabel('Área acumulada');

% Ajustar diseño
sgtitle('Análisis Matemático Básico', 'FontSize', 14, 'FontWeight', 'bold');