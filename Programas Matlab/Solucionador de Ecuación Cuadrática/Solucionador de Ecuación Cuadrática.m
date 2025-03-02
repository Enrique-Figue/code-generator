% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
% mediante la fórmula cuadrática, mostrando explicaciones paso a paso.

clc; clear;

% Pedir coeficientes al usuario
disp('--- Solucionador de ecuación cuadrática ---');
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Validar si es ecuación cuadrática
if a == 0
    error('El coeficiente "a" no puede ser cero. No es una ecuación cuadrática.');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante D = %.2f^2 - 4*%.2f*%.2f = %.2f\n', b, a, c, discriminante);

% Determinar tipo de raíces
if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('x₁ = %.2f\nx₂ = %.2f\n', x1, x2);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x = -b/(2*a);
    fprintf('x = %.2f\n', x);
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('x₁ = %.2f + %.2fi\nx₂ = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end