% Descripción: Este programa calcula y muestra las raíces de una ecuación cuadrática
% de la forma ax² + bx + c = 0, incluyendo manejo de casos complejos.

clc;
clear;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces según el discriminante
if discriminante > 0
    % Dos raíces reales distintas
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    fprintf('\nRaíces reales y distintas:\n');
    fprintf('x1 = %.2f\nx2 = %.2f\n', x1, x2);
    
elseif discriminante == 0
    % Una raíz real doble
    x = -b / (2*a);
    fprintf('\nRaíz real doble:\n');
    fprintf('x = %.2f\n', x);
    
else
    % Raíces complejas conjugadas
    parte_real = -b / (2*a);
    parte_imag = sqrt(abs(discriminante)) / (2*a);
    fprintf('\nRaíces complejas conjugadas:\n');
    fprintf('x1 = %.2f + %.2fi\n', parte_real, parte_imag);
    fprintf('x2 = %.2f - %.2fi\n', parte_real, parte_imag);
end