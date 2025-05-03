% QuadraticSolver: Resuelve ecuaciones cuadráticas ax² + bx + c = 0
% Este programa calcula las raíces de una ecuación cuadrática ingresando los coeficientes a, b y c.
% Maneja casos de raíces reales y complejas, y verifica si la ecuación es cuadrática.

% Solicitar al usuario los coeficientes
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si la ecuación es cuadrática (a ≠ 0)
if a == 0
    error('El coeficiente a no puede ser cero. Esto no es una ecuación cuadrática.');
end

% Calcular el discriminante
D = b^2 - 4*a*c;

% Determinar las raíces basadas en el discriminante
if D > 0
    % Dos raíces reales distintas
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    fprintf('Dos raíces reales distintas:\n');
    fprintf('x1 = %.2f\n', x1);
    fprintf('x2 = %.2f\n', x2);
elseif D == 0
    % Una raíz real (raíz doble)
    x = -b / (2*a);
    fprintf('Una raíz real doble:\n');
    fprintf('x = %.2f\n', x);
else
    % Dos raíces complejas conjugadas
    parte_real = -b / (2*a);
    parte_imag = sqrt(-D) / (2*a);
    fprintf('Dos raíces complejas conjugadas:\n');
    fprintf('x1 = %.2f + %.2fi\n', parte_real, parte_imag);
    fprintf('x2 = %.2f - %.2fi\n', parte_real, parte_imag);
end