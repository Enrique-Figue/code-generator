clear; clc; close all;

% Solicitar entrada de usuario
func_str = input('Ingrese una función (ej. sin(x), cos(x), exp(x)): ', 's');
n = input('Grado del polinomio de Taylor: ');
punto_expansion = input('Punto de expansión (ej. 0 para Maclaurin): ');

% Definir función simbólica
syms x;
f = str2sym(func_str);

% Calcular polinomio de Taylor
taylor_poly = taylor(f, x, 'ExpansionPoint', punto_expansion, 'Order', n+1);

% Crear rango de visualización
rango = [punto_expansion-3, punto_expansion+3];

% Configurar figura
figure('Color', 'white', 'Name', 'Aproximación de Taylor');
hold on;

% Graficar función original
fplot(f, rango, 'LineWidth', 2, 'DisplayName', 'Función original');

% Graficar aproximación de Taylor
fplot(taylor_poly, rango, '--', 'LineWidth', 2, 'DisplayName', ...
    sprintf('Taylor grado %d', n));

% Añadir marcador de punto de expansión
plot(punto_expansion, subs(f, x, punto_expansion), 'ro', ...
    'MarkerSize', 8, 'MarkerFaceColor', 'r', 'DisplayName', 'Punto de expansión');

% Configurar gráfico
title(sprintf('Aproximación de Taylor para %s', func_str));
xlabel('x'); ylabel('f(x)');
legend('Location', 'best');
grid on;
box on;
hold off;