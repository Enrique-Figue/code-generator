% Descripción: Grafica una función matemática, su derivada numérica y su integral numérica
%              en un intervalo dado, mostrando información educativa en la consola

clear; clc; close all;

% Parámetros configurables
x_inicio = -2*pi;      % Límite inferior del dominio
x_final = 2*pi;        % Límite superior del dominio
num_puntos = 1000;     % Número de puntos para el cálculo
funcion = @(x) sin(x) + 0.5*sin(3*x);  % Función a analizar

% Generación del dominio
x = linspace(x_inicio, x_final, num_puntos);
y = funcion(x);

% Cálculo de derivada numérica
dy = diff(y)./diff(x);
x_derivada = x(1:end-1) + diff(x)/2;  % Puntos centrados para la derivada

% Cálculo de integral numérica acumulada
integral = cumtrapz(x, y);

% Configuración de la figura
figure('Name','Analizador de Funciones','NumberTitle','off');
subplot(3,1,1);
plot(x, y, 'LineWidth', 1.5);
title('Función Original');
xlabel('x'); ylabel('f(x)');
grid on; xlim([x_inicio x_final]);

subplot(3,1,2);
plot(x_derivada, dy, 'LineWidth', 1.5, 'Color', [0.8 0.2 0]);
title('Derivada Numérica');
xlabel('x'); ylabel("f'(x)");
grid on; xlim([x_inicio x_final]);

subplot(3,1,3);
plot(x, integral, 'LineWidth', 1.5, 'Color', [0.2 0.6 0.2]);
title('Integral Numérica Acumulada');
xlabel('x'); ylabel('\int f(x) dx');
grid on; xlim([x_inicio x_final]);

% Mostrar información en consola
fprintf('=== Análisis de la función ===\n');
fprintf('Valor promedio en el intervalo: %.4f\n', mean(y));
fprintf('Área neta bajo la curva: %.4f\n', trapz(x, y));
fprintf('Máxima pendiente positiva: %.4f\n', max(dy));
fprintf('Mínima pendiente negativa: %.4f\n', min(dy));