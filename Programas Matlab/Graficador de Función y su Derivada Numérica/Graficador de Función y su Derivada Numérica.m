% Descripción: Este programa grafica una función matemática y su derivada numérica,
%              demostrando conceptos básicos de cálculo y visualización en MATLAB.
% Autor: GitHub@anoni-mouse

% Limpiar espacio de trabajo y cerrar todas las figuras
clear all; close all; clc;

%% Parámetros de configuración
x_inicio = 0;         % Inicio del dominio
x_final = 2*pi;       % Fin del dominio
num_puntos = 100;     % Número de puntos para discretización

%% Generación del dominio y función original
x = linspace(x_inicio, x_final, num_puntos);  % Crear vector espaciado uniformemente
y = sin(x);                                   % Función a analizar (puede modificarse)

%% Cálculo de derivada numérica usando diferencias finitas
h = x(2) - x(1);                             % Tamaño del paso
dy_dx = diff(y)/h;                           % Aproximación de la derivada
x_derivada = x(1:end-1) + h/2;               % Ajuste de dominio para derivada

%% Visualización de resultados
figure('Name','Función y su Derivada','NumberTitle','off')
hold on; grid on; box on;

% Graficar función original
plot(x, y, 'b-', 'LineWidth', 2, 'DisplayName', 'f(x) = sin(x)')

% Graficar derivada numérica
plot(x_derivada, dy_dx, 'r--', 'LineWidth', 2, 'DisplayName', 'Derivada numérica')

% Configuración estética del gráfico
title('Función y su Derivada Numérica', 'FontSize', 12)
xlabel('x', 'FontSize', 10)
ylabel('f(x) / df(x)/dx', 'FontSize', 10)
legend('show', 'Location', 'northeast')

% Ajustar rango vertical para mejor visualización
ylim([-1.5 1.5])

%% (Sección adicional: Comparación con derivada analítica para referencia)
% Descomentar para incluir lección adicional sobre derivada exacta
% dy_exacta = cos(x_derivada);
% plot(x_derivada, dy_exacta, 'ko', 'MarkerSize', 3, 'DisplayName', 'Derivada exacta')