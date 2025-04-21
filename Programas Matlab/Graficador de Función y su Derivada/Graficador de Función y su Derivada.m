% Descripción: Este programa grafica una función matemática y su derivada en un intervalo dado,
%              permitiendo visualizar la relación entre la función y su tasa de cambio.

clc; clear; close all;  % Limpiar entorno

% Solicitar entrada al usuario
f = input('Ingrese la función f(x) (ejemplo: @(x) x.^2): ');
x_inicio = input('Ingrese el valor inicial de x: ');
x_final = input('Ingrese el valor final de x: ');

% Crear vector x y evaluar función
x = linspace(x_inicio, x_final, 1000);
y = f(x);

% Calcular derivada simbólica
syms xs;  % Variable simbólica
f_sym = f(xs);  % Función simbólica
df_sym = diff(f_sym, xs);  % Derivada simbólica
df = matlabFunction(df_sym);  % Convertir a función numérica
dy = df(x);

% Configurar figura
figure('Color', 'white', 'Name', 'Función y Derivada');

% Subplot para la función original
subplot(2,1,1);
plot(x, y, 'b', 'LineWidth', 1.5);
title(['Función: f(x) = ' char(formula(f))]);
xlabel('x'); ylabel('f(x)');
grid on;

% Subplot para la derivada
subplot(2,1,2);
plot(x, dy, 'r', 'LineWidth', 1.5);
title(['Derivada: f''(x) = ' char(df_sym)]);
xlabel('x'); ylabel('f''(x)');
grid on;

% Ajustar espaciado entre subplots
sgtitle('Análisis de Función y su Derivada', 'FontWeight', 'bold');