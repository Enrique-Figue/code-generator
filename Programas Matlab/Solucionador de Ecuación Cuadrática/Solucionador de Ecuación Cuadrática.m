% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
% y muestra los resultados de forma clara, incluyendo casos reales y complejos.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente cuadrático (a): ');
b = input('Ingrese el coeficiente lineal (b): ');
c = input('Ingrese el término constante (c): ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Determinar las raíces según el discriminante
if discriminante > 0
    % Dos raíces reales distintas
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    fprintf('Dos raíces reales distintas:\n');
    fprintf('x1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif discriminante == 0
    % Raíz real única (repetida)
    x = -b / (2*a);
    fprintf('Una raíz real repetida:\n');
    fprintf('x = %.2f\n', x);
else
    % Raíces complejas conjugadas
    parte_real = -b / (2*a);
    parte_imaginaria = sqrt(-discriminante) / (2*a);
    fprintf('Dos raíces complejas conjugadas:\n');
    fprintf('x1 = %.2f + %.2fi\n', parte_real, parte_imaginaria);
    fprintf('x2 = %.2f - %.2fi\n', parte_real, parte_imaginaria);
end