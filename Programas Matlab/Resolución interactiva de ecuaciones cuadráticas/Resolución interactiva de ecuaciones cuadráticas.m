% Descripción: Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0
%              mostrando todos los pasos intermedios y explicando el tipo de solución encontrada.

disp('Resolución de ecuación cuadrática: ax² + bx + c = 0');
disp('Ingrese los coeficientes numéricos solicitados:');

a = input('Coeficiente a: ');
while a == 0
    disp('Error: El coeficiente "a" no puede ser cero en una ecuación cuadrática');
    a = input('Ingrese nuevamente el coeficiente a: ');
end

b = input('Coeficiente b: ');
c = input('Coeficiente c: ');

discriminante = b^2 - 4*a*c; % Cálculo del discriminante
fprintf('\nPASO 1: Discriminante = b² - 4ac = %.2f² - 4*%.2f*%.2f = %.4f\n', b, a, c, discriminante);

if discriminante > 0
    disp('RAÍCES REALES DIFERENTES (Discriminante > 0)');
elseif discriminante == 0
    disp('RAÍZ REAL ÚNICA (Discriminante = 0)');
else
    disp('RAÍCES COMPLEJAS CONJUGADAS (Discriminante < 0)');
end

x1 = (-b + sqrt(discriminante))/(2*a); % Primera solución
x2 = (-b - sqrt(discriminante))/(2*a); % Segunda solución

fprintf('\nPASO 2: Aplicando fórmula cuadrática');
fprintf('\nx = [-b ± √(b²-4ac)]/(2a)\n');
fprintf('\nResultados:');
if discriminante >= 0
    fprintf('\n x₁ = %.4f\n x₂ = %.4f\n', x1, x2);
else
    fprintf('\n x₁ = %.4f + %.4fi\n x₂ = %.4f - %.4fi\n', real(x1), imag(x1), real(x2), imag(x2));
end

disp('¡Análisis completado!');