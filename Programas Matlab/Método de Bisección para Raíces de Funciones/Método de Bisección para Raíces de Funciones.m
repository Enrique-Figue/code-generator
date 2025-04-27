% Descripción: Encuentra una raíz de f(x) en [a,b] usando el método de bisección.
%              Muestra iteraciones para ilustrar convergencia del método.

f = @(x) x^3 - 2*x - 5;  % Función a analizar (modifica esta línea para probar otras)
a = input('Ingrese límite inferior a: ');
b = input('Ingrese límite superior b: ');
tol = input('Ingrese tolerancia (ej: 1e-6): ');
max_iter = input('Ingrese máximo iteraciones: ');

if f(a) * f(b) >= 0  % Verifica condición inicial del teorema de Bolzano
    error('Error: f(a) y f(b) deben tener signos opuestos.');
end

fprintf('\nIter |   a      c      b    |   f(c)    \n');
fprintf('-----|---------------------|------------\n');

for iter = 1:max_iter
    c = (a + b) / 2;      % Calcula punto medio
    fc = f(c);            % Evalúa función en c
    
    fprintf('%4d | %6.4f %6.4f %6.4f | %9.2e\n', iter, a, c, b, fc);
    
    if abs(fc) < tol      % Condición de parada por tolerancia
        break;
    elseif f(a) * fc < 0  % Decide nuevo intervalo
        b = c;
    else
        a = c;
    end
end

fprintf('\nResultado: Raíz en x = %.6f (f(x) = %.2e)\n', c, fc);