clear; clc;

% Programa interactivo que resuelve ecuaciones cuadráticas ax² + bx + c = 0
% y explica detalladamente el proceso de solución

fprintf('Solución de ecuaciones cuadráticas\n');
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

discriminante = b^2 - 4*a*c;

fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante D = b² - 4ac = %.4f\n', discriminante);

if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x = -b/(2*a);
    fprintf('x = %.4f\n', x);
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n', realPart, imagPart, realPart, imagPart);
end