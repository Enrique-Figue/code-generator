% Descripción: Este programa calcula las raíces de una ecuación cuadrática ax² + bx + c = 0,
%              mostrando el proceso paso a paso, incluido el discriminante y el tipo de raíces.

% Solicitar coeficientes al usuario
a = input('Introduce el coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática.');
end
b = input('Introduce el coeficiente b: ');
c = input('Introduce el coeficiente c: ');

% Calcular discriminante y mostrar resultados intermedios
discriminante = b^2 - 4*a*c;
fprintf('\nPaso 1: Calculando el discriminante D = b² - 4ac\n');
fprintf('D = %.2f² - 4*%.2f*%.2f = %.2f\n', b, a, c, discriminante);

% Determinar el tipo de raíces y calcularlas
if discriminante > 0
    fprintf('Paso 2: Dos raíces reales distintas (D > 0)\n');
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    fprintf('Raíz 1: x = (-b + √D)/(2a) = %.4f\n', x1);
    fprintf('Raíz 2: x = (-b - √D)/(2a) = %.4f\n', x2);
elseif discriminante == 0
    fprintf('Paso 2: Una raíz real doble (D = 0)\n');
    x = -b / (2*a);
    fprintf('Raíz única: x = -b/(2a) = %.4f\n', x);
else
    fprintf('Paso 2: Raíces complejas conjugadas (D < 0)\n');
    realPart = -b / (2*a);
    imagPart = sqrt(-discriminante) / (2*a);
    fprintf('Raíz 1: x = %.4f + %.4fi\n', realPart, imagPart);
    fprintf('Raíz 2: x = %.4f - %.4fi\n', realPart, imagPart);
end