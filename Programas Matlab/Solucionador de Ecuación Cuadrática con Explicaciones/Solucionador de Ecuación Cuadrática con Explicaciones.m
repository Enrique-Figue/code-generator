clc;
disp('Este programa resuelve una ecuación cuadrática de la forma ax² + bx + c = 0.');
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante calculado: D = %.2f\n', discriminante);

if discriminante > 0
    fprintf('D > 0: Dos raíces reales distintas.\n');
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real única.\n');
    x1 = -b / (2*a);
    x2 = x1;
else
    fprintf('D < 0: Dos raíces complejas conjugadas.\n');
    parte_real = -b / (2*a);
    parte_imag = sqrt(-discriminante) / (2*a);
    x1 = complex(parte_real, parte_imag);
    x2 = complex(parte_real, -parte_imag);
end

fprintf('\nSoluciones:\n');
fprintf('x1 = %s\n', num2str(x1, '%.4f'));
fprintf('x2 = %s\n', num2str(x2, '%.4f'));
pause(2);
disp('¡Fin del programa!');