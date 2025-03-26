% Descripción: Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0,
% calculando sus raíces y mostrando información educativa sobre el discriminante.

clc;
clear;
close all;

fprintf('SOLUCIONADOR DE ECUACIONES CUADRÁTICAS\n');
fprintf('======================================\n');

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Validar que sea ecuación cuadrática
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nANÁLISIS DEL DISCRIMINANTE:\n');
fprintf('Discriminante D = %.2f\n', discriminante);

% Determinar tipo de raíces
if discriminante > 0
    fprintf('-> Dos raíces reales distintas\n');
elseif discriminante == 0
    fprintf('-> Una raíz real doble\n');
else
    fprintf('-> Dos raíces complejas conjugadas\n');
end

% Calcular soluciones
parte_real = -b/(2*a);
parte_imaginaria = sqrt(abs(discriminante))/(2*a);

% Mostrar resultados
fprintf('\nSOLUCIONES:\n');
if discriminante >= 0
    x1 = parte_real + parte_imaginaria;
    x2 = parte_real - parte_imaginaria;
    fprintf('x₁ = %.2f\n', x1);
    fprintf('x₂ = %.2f\n', x2);
else
    fprintf('x₁ = %.2f + %.2fi\n', parte_real, parte_imaginaria);
    fprintf('x₂ = %.2f - %.2fi\n', parte_real, parte_imaginaria);
end

% Mostrar forma factorizada
fprintf('\nFORMA FACTORIZADA:\n');
if discriminante >= 0
    fprintf('%.2f(x - %.2f)(x - %.2f)\n', a, x1, x2);
else
    fprintf('%.2f(x - (%.2f+%.2fi))(x - (%.2f-%.2fi))\n', a, parte_real, parte_imaginaria, parte_real, parte_imaginaria);
end