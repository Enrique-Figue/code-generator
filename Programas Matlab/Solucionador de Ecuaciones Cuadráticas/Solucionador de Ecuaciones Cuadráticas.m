% Descripción: Resuelve ecuaciones de segundo grado de la forma ax² + bx + c = 0
%   y muestra información educativa sobre el proceso de solución y discriminante

% Limpiar espacio de trabajo
clc;
clear;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a (diferente de 0): ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Mostrar información del discriminante
fprintf('\nDiscriminante D = b² - 4ac = %.2f\n', discriminante);

% Determinar naturaleza de las raíces
if discriminante > 0
    fprintf('D > 0: Dos raíces reales distintas\n');
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
end

% Calcular y mostrar soluciones
if a == 0
    error('El coeficiente a debe ser diferente de cero para una ecuación cuadrática');
else
    parte_real = -b/(2*a);
    parte_imaginaria = sqrt(abs(discriminante))/(2*a);
    
    if discriminante >= 0
        x1 = parte_real + parte_imaginaria;
        x2 = parte_real - parte_imaginaria;
        fprintf('\nSoluciones:\n');
        fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
    else
        fprintf('\nSoluciones complejas:\n');
        fprintf('x₁ = %.4f + %.4fi\n', parte_real, parte_imaginaria);
        fprintf('x₂ = %.4f - %.4fi\n', parte_real, parte_imaginaria);
    end
end

% Mostrar forma factorizada (si es aplicable)
if discriminante >= 0 && a == 1
    fprintf('\nForma factorizada:\n');
    if discriminante == 0
        fprintf('(x %+.2f)²\n', -x1);
    else
        fprintf('(x %+.2f)(x %+.2f)\n', -x1, -x2);
    end
end