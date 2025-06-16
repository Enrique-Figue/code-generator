% Descripción: Calcula las raíces de una ecuación cuadrática y clasifica su naturaleza
% según el discriminante, mostrando explicaciones educativas paso a paso

clc;
disp('Calculadora de ecuaciones cuadráticas: ax² + bx + c = 0');

a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar que sea ecuación cuadrática
if a == 0
    error('No es ecuación cuadrática (a no puede ser cero)');
end

disp(newline);
disp(['Ecuación ingresada: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c), ' = 0']);

% Calcular discriminante
discriminante = b^2 - 4*a*c;
disp(['-> Discriminante D = b² - 4ac = ', num2str(discriminante)]);

% Analizar naturaleza de las raíces
if discriminante > 0
    disp('D > 0: Dos raíces reales diferentes');
elseif discriminante == 0
    disp('D = 0: Una raíz real doble');
else
    disp('D < 0: Dos raíces complejas conjugadas');
end

% Calcular soluciones
x1 = (-b + sqrt(discriminante)) / (2*a);
x2 = (-b - sqrt(discriminante)) / (2*a);

% Mostrar resultados con formato
disp(newline);
disp('Soluciones:');
if discriminante >= 0
    fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
else
    % Formatear parte real e imaginaria para complejos
    fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n', real(x1), imag(x1), real(x2), imag(x2));
end

disp(newline);
disp('Proceso completo:');
disp('1. Se verificó que la ecuación sea cuadrática');
disp('2. Se calculó el discriminante D = b² - 4ac');
disp('3. Se analizó la naturaleza de las raíces según D');
disp('4. Se aplicó la fórmula cuadrática para encontrar las soluciones');