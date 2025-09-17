% Descripción: Este programa grafica una función, su derivada numérica y su integral numérica en el intervalo [-2π, 2π],
%              proporcionando una visualización educativa de conceptos fundamentales de cálculo.

clear all; close all; clc;

% Parámetros de configuración
x_min = -2*pi;          % Límite inferior del dominio
x_max = 2*pi;           % Límite superior del dominio
n_puntos = 1000;        % Número de puntos para la discretización

% Crear vector x y función original
x = linspace(x_min, x_max, n_puntos);
f = x .* sin(x);        % Función a analizar: x*sen(x)

% Calcular derivada numérica usando diferencias finitas
df = diff(f) ./ diff(x);
x_deriv = x(2:end);     % Ajustar dominio para la derivada

% Calcular integral numérica usando la regla del trapecio acumulativa
F = cumtrapz(x, f);
x_int = x;              % Mismo dominio para la integral

% Crear figura con subplots
figure('Name','Análisis de Función', 'NumberTitle','off');
subplot(3,1,1);
plot(x, f, 'b', 'LineWidth', 1.5);
title('Función Original: f(x) = x·sin(x)');
xlabel('x'); ylabel('f(x)');
grid on;

subplot(3,1,2);
plot(x_deriv, df, 'r', 'LineWidth', 1.5);
title('Derivada Numérica: df/dx');
xlabel('x'); ylabel("f'(x)");
grid on;

subplot(3,1,3);
plot(x_int, F, 'g', 'LineWidth', 1.5);
title('Integral Numérica: ∫₀^x f(t) dt');
xlabel('x'); ylabel('F(x)');
grid on;

% Mostrar descripción en ventana de comandos
disp(['Análisis completo de f(x) = x·sin(x) en [', num2str(x_min), ', ', num2str(x_max), ']']);
disp(' - Gráfico 1: Función original');
disp(' - Gráfico 2: Derivada numérica (diferencias finitas)');
disp(' - Gráfico 3: Integral numérica (regla del trapecio acumulativa)');