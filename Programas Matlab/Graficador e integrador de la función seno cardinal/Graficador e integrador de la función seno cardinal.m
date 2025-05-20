clear; clc; close all;  % Limpiar entorno

% Descripción: Este programa grafica la función seno cardinal (sin(x)/x) 
% y calcula la integral definida desde 0 hasta un valor ingresado por el usuario.

fprintf('=== Análisis de la función seno cardinal ===\n');
inputVal = input('Ingrese el límite superior para la integral (ej: 2*pi): ');

% Generar datos para la gráfica
x = linspace(-4*pi, 4*pi, 1000);  % Rango simétrico para visualización
y = sinc(x/pi);  % sin(π*(x/π))/(π*(x/π)) = sin(x)/x

% Crear gráfica con estilo profesional
figure('Color', 'white');
plot(x, y, 'b', 'LineWidth', 1.5);
title('\textbf{Función Seno Cardinal}', 'Interpreter', 'latex');
xlabel('x');
ylabel('sinc(x) = sin(x)/x');
grid on;
legend('sin(x)/x', 'Location', 'northeast');
xlim([-4*pi 4*pi]);

% Calcular integral numérica (sin(x)/x desde 0 hasta inputVal)
integralVal = integral(@(t) sinc(t/pi), 0, inputVal);

% Mostrar resultados
fprintf('\nResultados:');
fprintf('\nIntegral de 0 a %.2f = %.4f', inputVal, integralVal);
fprintf('\n(La integral del seno cardinal corresponde a la función seno integral)\n');