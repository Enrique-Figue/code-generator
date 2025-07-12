clear; clc;

% Mostrar propósito del programa
disp('Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0.');

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si la ecuación es cuadrática
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end

% Mostrar la ecuación ingresada
fprintf('\nEcuación ingresada: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);

% Calcular discriminante
D = b^2 - 4*a*c;

% Calcular raíces dependiendo del discriminante
if D > 0
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D))/(2*a);
    fprintf('\nRaíces reales y distintas:\n');
    fprintf('x1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif D == 0
    x = -b / (2*a);
    fprintf('\nRaíz real única (repetida):\n');
    fprintf('x = %.2f\n', x);
else
    parteReal = -b / (2*a);
    parteImag = sqrt(abs(D)) / (2*a);
    fprintf('\nRaíces complejas conjugadas:\n');
    fprintf('x1 = %.2f + %.2fi\n', parteReal, parteImag);
    fprintf('x2 = %.2f - %.2fi\n', parteReal, parteImag);
end