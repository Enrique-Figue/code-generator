% Descripción: Este programa grafica una función matemática y su derivada en un intervalo dado,
%              permitiendo visualizar la relación entre ambas de manera educativa.

% Limpiar espacio de trabajo y cerrar todas las figuras existentes
clear all;
close all;

% Definir parámetros del usuario
x_inicio = -5;     % Extremo inicial del intervalo
x_final = 5;       % Extremo final del intervalo
n_puntos = 100;    % Número de puntos para la discretización

% Definir la función a analizar (modificable por el usuario)
funcion = @(x) sin(x);  % Función original (seno como ejemplo)

% Crear vector de valores x equiespaciados
x = linspace(x_inicio, x_final, n_puntos);

% Evaluar la función en los puntos x
y = funcion(x);

% Calcular derivada numérica usando diferencias finitas
dy = diff(y) ./ diff(x);      % Aproximación de la derivada
x_derivada = x(1:end-1) + diff(x)/2;  % Centrar los puntos de la derivada

% Configurar la figura para gráficos
figure('Color', 'white', 'Name', 'Función y Derivada');
hold on;
grid on;
box on;

% Graficar función original
plot(x, y, 'b-', 'LineWidth', 2, 'DisplayName', 'f(x) = sin(x)');

% Graficar derivada numérica
plot(x_derivada, dy, 'r--', 'LineWidth', 2, 'DisplayName', 'f''(x)');

% Personalización del gráfico
title({'Relación entre una función y su derivada', '(Ejemplo con función seno)'});
xlabel('Variable Independiente (x)');
ylabel('Valores de Función/Derivada');
legend('show', 'Location', 'northeast');

% Ajustar ejes para mejor visualización
xlim([x_inicio x_final]);
set(gca, 'FontSize', 12);