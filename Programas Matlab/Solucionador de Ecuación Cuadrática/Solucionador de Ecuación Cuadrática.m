% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
%              e ilustra el proceso paso a paso con comentarios detallados.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si es una ecuación cuadrática válida
if a == 0
    error('El coeficiente a no puede ser cero (no es cuadrática)')
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante D = %.2f\n', discriminante);

% Determinar tipo de raíces
if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Soluciones:\nx₁ = %.2f\nx₂ = %.2f\n', x1, x2);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x = -b/(2*a);
    fprintf('Solución:\nx = %.2f\n', x);
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('Soluciones:\nx₁ = %.2f + %.2fi\nx₂ = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end