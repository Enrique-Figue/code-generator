% Programa interactivo para calcular raíces de una ecuación cuadrática ax² + bx + c = 0
% con explicaciones didácticas y manejo de casos especiales

a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

disp(newline)
if a == 0
    disp('ERROR: Coeficiente principal no puede ser cero')
    disp('¡Esto no es una ecuación cuadrática!')
    return
end

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;
disp(['Discriminante D = ' num2str(discriminante)]);

% Determinación del tipo de raíces
if discriminante > 0
    disp('D > 0: Dos raíces reales distintas');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    disp('D = 0: Una raíz real doble');
    x1 = -b/(2*a);
    x2 = x1;
else
    disp('D < 0: Dos raíces complejas conjugadas');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    x1 = realPart + imagPart*1i;
    x2 = realPart - imagPart*1i;
end

% Mostrar resultados con formato
disp(newline)
disp('SOLUCIÓN:')
fprintf('x₁ = %s\n', num2str(x1, '%.4f'));
fprintf('x₂ = %s\n\n', num2str(x2, '%.4f'));

% Explicación adicional
disp('Fórmula cuadrática: x = [-b ± √(b²-4ac)]/(2a)')
disp('El discriminante determina la naturaleza de las raíces:')
disp(' - Positivo: 2 raíces reales')
disp(' - Cero:     1 raíz real (doble)')
disp(' - Negativo: 2 raíces complejas')