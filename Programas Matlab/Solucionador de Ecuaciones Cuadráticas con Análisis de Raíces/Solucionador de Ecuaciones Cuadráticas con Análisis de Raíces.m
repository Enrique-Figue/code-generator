% Descripción: Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0,
% calculando sus raíces reales o complejas, y proporciona información educativa sobre el discriminante.

clc;
clear;

% Solicitar coeficientes al usuario
disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar que sea ecuación cuadrática
if a == 0
    error('El coeficiente a no puede ser cero en una ecuación cuadrática');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante D = %.2f\n', discriminante);

% Analizar naturaleza de las raíces y calcular soluciones
if discriminante > 0
    fprintf('-> Dos raíces reales distintas\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('x₁ = %.3f\nx₂ = %.3f\n', x1, x2);
elseif discriminante == 0
    fprintf('-> Una raíz real doble\n');
    x = -b/(2*a);
    fprintf('x = %.3f (multiplicidad 2)\n', x);
else
    fprintf('-> Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('x₁ = %.3f + %.3fi\nx₂ = %.3f - %.3fi\n', realPart, imagPart, realPart, imagPart);
end

% Explicación educativa final
fprintf('\nAnálisis:\nEl discriminante D determina la naturaleza de las raíces:\n');
fprintf('- D > 0: 2 raíces reales distintas\n- D = 0: 1 raíz real repetida\n- D < 0: 2 raíces complejas\n');