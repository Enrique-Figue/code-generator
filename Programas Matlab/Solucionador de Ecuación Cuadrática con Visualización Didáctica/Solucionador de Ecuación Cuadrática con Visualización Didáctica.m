% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0,
%              mostrando paso a paso el cálculo del discriminante y el tipo de raíces.

clc;
disp('=== Solucionador de Ecuación Cuadrática ===');
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nPaso 1: Calculando discriminante D = b² - 4ac\n');
fprintf('D = (%d)² - 4*(%d)*(%d) = %d\n', b, a, c, discriminante);

% Determinación del tipo de raíces
if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('\nPaso 2: Fórmula cuadrática\nx = [-b ± √D]/2a\n');
    fprintf('x₁ = %.2f\nx₂ = %.2f\n', x1, x2);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x = -b/(2*a);
    fprintf('\nPaso 2: Fórmula cuadrática\nx = -b/2a\n');
    fprintf('x = %.2f\n', x);
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    fprintf('\nPaso 2: Fórmula para raíces complejas\n');
    fprintf('x₁ = %.2f + %.2fi\nx₂ = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

disp('============================================');