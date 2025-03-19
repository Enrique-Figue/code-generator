% Descripción: Este programa calcula las raíces reales o complejas de una ecuación cuadrática de la forma ax² + bx + c = 0.
% Solicita los coeficientes al usuario, calcula el discriminante y muestra las soluciones con explicaciones detalladas.

clc;
disp('Calculadora de Raíces Cuadráticas');
disp('=================================');

% Entrada de coeficientes
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Mostrar información del cálculo
fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante: %.2f\n', discriminante);

% Determinación de las raíces
if discriminante > 0
    disp('Dos raíces reales distintas');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
elseif discriminante == 0
    disp('Una raíz real (raíz doble)');
    x = -b/(2*a);
    fprintf('x = %.4f\n', x);
else
    disp('Dos raíces complejas conjugadas');
    parte_real = -b/(2*a);
    parte_imaginaria = sqrt(abs(discriminante))/(2*a);
    fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n',...
            parte_real, parte_imaginaria, parte_real, parte_imaginaria);
end

% Información educativa adicional
disp(newline);
disp('Explicación:');
disp('La naturaleza de las raíces depende del discriminante (D = b² - 4ac):');
disp('D > 0: Dos raíces reales distintas');
disp('D = 0: Una raíz real repetida');
disp('D < 0: Dos raíces complejas conjugadas');