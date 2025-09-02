% Programa que aproxima integrales definidas usando el método del trapecio
% y muestra comparación con solución analítica para funciones de ejemplo.

disp('Seleccione una función para integrar:');
disp('1: f(x) = x² en [0, 1]');
disp('2: f(x) = sin(x) en [0, π]');
disp('3: f(x) = e^x en [0, 2]');
opcion = input('Ingrese su elección (1-3): ');

[funcion, a, b, exacto] = seleccionar_funcion(opcion);
n = input('Ingrese número de subintervalos (n > 0): ');
h = (b - a)/n;

% Generar puntos y evaluar función
x = linspace(a, b, n+1);
y = funcion(x);

% Calcular integral por regla del trapecio
integral = (h/2)*(y(1) + 2*sum(y(2:end-1)) + y(end));

% Mostrar resultados comparativos
fprintf('\n--- Resultados ---\n');
fprintf('Aproximación numérica: %.6f\n', integral);
fprintf('Valor exacto:          %.6f\n', exacto);
fprintf('Error absoluto:        %.2e\n\n', abs(integral - exacto));

function [f, a, b, exact] = seleccionar_funcion(opcion)
    switch opcion
        case 1
            f = @(x) x.^2;
            a = 0; b = 1;
            exact = 1/3;
        case 2
            f = @(x) sin(x);
            a = 0; b = pi;
            exact = 2;
        case 3
            f = @(x) exp(x);
            a = 0; b = 2;
            exact = exp(2) - 1;
        otherwise
            error('Opción no válida: usando función por defecto x²');
            f = @(x) x.^2;
            a = 0; b = 1;
            exact = 1/3;
    end
end