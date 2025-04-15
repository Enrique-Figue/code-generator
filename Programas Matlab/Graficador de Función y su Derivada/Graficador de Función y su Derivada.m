% Descripción: Este programa grafica una función matemática y su derivada numérica en el mismo gráfico,
%              permitiendo visualizar la relación entre la función y su tasa de cambio.

% Limpiar espacio de trabajo y cerrar todas las figuras
clear all;
close all;

% Definir parámetros
xInicio = -2*pi;     % Límite inferior del dominio
xFin = 2*pi;         % Límite superior del dominio
nPuntos = 100;       % Número de puntos para la discretización

% Crear vector de valores x equiespaciados
x = linspace(xInicio, xFin, nPuntos);

% Definir función original (puede modificarse)
funcion = sin(x) + 0.5*x;

% Calcular derivada numérica usando diferencias finitas
derivada = diff(funcion) ./ diff(x);  % Cálculo de la derivada
xDerivada = x(1:end-1) + diff(x)/2;   % Ajuste del dominio para la derivada

% Configurar figura
figure('Color', 'white', 'Name', 'Función y su Derivada');
hold on;  % Mantener ambas gráficas en la misma figura

% Graficar función original
plot(x, funcion, 'b-', 'LineWidth', 2, 'DisplayName', 'f(x) = sin(x) + 0.5x');

% Graficar derivada numérica
plot(xDerivada, derivada, 'r--', 'LineWidth', 2, 'DisplayName', 'Derivada numérica');

% Personalizar gráfico
title('Función y su Derivada','FontSize',12);
xlabel('x','FontWeight','bold');
ylabel('Valor de la función','FontWeight','bold');
legend('show', 'Location', 'northwest');
grid on;
axis tight;

% Añadir línea horizontal en y=0 para referencia
yline(0, 'k:', 'Alpha', 0.3);

hold off;  % Liberar la figura