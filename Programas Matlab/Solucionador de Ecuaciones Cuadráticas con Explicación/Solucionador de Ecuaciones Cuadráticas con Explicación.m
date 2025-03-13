% Descripción: Este programa calcula las raíces de una ecuación cuadrática ax² + bx + c = 0,
%              mostrando el proceso paso a paso y clasificando el tipo de raíces.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a (diferente de cero): ');
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática.')
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nPaso 1: Discriminante D = b² - 4ac = %.2f\n', discriminante);

% Determinar tipo de raíces y calcularlas
if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x1 = -b/(2*a);
    x2 = x1;
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    x1 = complex(realPart, imagPart);
    x2 = complex(realPart, -imagPart);
end

% Mostrar resultados
fprintf('\nPaso 2: Soluciones calculadas:\n');
if discriminante >= 0
    fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
else
    fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n', real(x1), imag(x1), real(x2), imag(x2));
end