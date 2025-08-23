clc;
clear;
disp('Este programa resuelve una ecuación cuadrática de la forma ax² + bx + c = 0.');
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

D = b^2 - 4*a*c;  % Cálculo del discriminante

if D > 0
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    fprintf('\nDiscriminante: %.2f (>0), dos raíces reales.\n', D);
    fprintf('x1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif D == 0
    x = -b / (2*a);
    fprintf('\nDiscriminante: %.2f (=0), una raíz real.\n', D);
    fprintf('x = %.2f\n', x);
else
    realPart = -b / (2*a);
    imagPart = sqrt(-D) / (2*a);
    fprintf('\nDiscriminante: %.2f (<0), dos raíces complejas.\n', D);
    fprintf('x1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end