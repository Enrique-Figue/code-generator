% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0,
% incluyendo análisis del discriminante y resultados en forma compleja donde sea necesario.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática')
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Mostrar información educativa
fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante = %.2f^2 - 4*%.2f*%.2f = %.2f\n', b, a, c, discriminante);

% Determinar tipo de raíces y calcular
if discriminante > 0
    fprintf('Dos raíces reales distintas\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    fprintf('Una raíz real doble\n');
    x1 = -b/(2*a);
    x2 = x1;
else
    fprintf('Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    x1 = complex(realPart, imagPart);
    x2 = complex(realPart, -imagPart);
end

% Mostrar resultados
fprintf('\nSoluciones:\n');
fprintf('x1 = %s\n', num2str(x1, '%.4f'));
fprintf('x2 = %s\n\n', num2str(x2, '%.4f'));