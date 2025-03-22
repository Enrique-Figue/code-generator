% Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0.
% Solicita los coeficientes a, b, c al usuario, calcula el discriminante y
% determina si las raíces son reales y diferentes, reales e iguales, o complejas conjugadas.
% Muestra las raíces resultantes con precisión decimal.

a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end

discriminante = b^2 - 4*a*c;

if discriminante > 0
    raiz1 = (-b + sqrt(discriminante)) / (2*a);
    raiz2 = (-b - sqrt(discriminante)) / (2*a);
    disp('La ecuación tiene dos raíces reales diferentes.');
    fprintf('Raíz 1: %.4f\n', raiz1);
    fprintf('Raíz 2: %.4f\n', raiz2);
elseif discriminante == 0
    raiz = -b / (2*a);
    disp('La ecuación tiene una raíz real doble.');
    fprintf('Raíz doble: %.4f\n', raiz);
else
    parte_real = -b / (2*a);
    parte_imag = sqrt(-discriminante) / (2*a);
    disp('La ecuación tiene raíces complejas conjugadas.');
    fprintf('Raíz 1: %.4f + %.4fi\n', parte_real, parte_imag);
    fprintf('Raíz 2: %.4f - %.4fi\n', parte_real, parte_imag);
end