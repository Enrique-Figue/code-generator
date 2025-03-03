% Descripción: Aproxima la integral de una función en [a,b] usando la regla trapezoidal
% y muestra el resultado, comparándolo con la solución exacta (si está disponible).

% Definir función a integrar (ejemplo: sin(x))
f = @(x) sin(x);

% Entrada interactiva de parámetros
a = input('Ingrese límite inferior a: ');
b = input('Ingrese límite superior b: ');
N = input('Ingrese número de subintervalos N: ');

% Calcular paso y puntos de malla
h = (b - a)/N;
x = a:h:b;

% Calcular valores de la función
f_x = f(x);

% Aplicar regla trapezoidal
integral_trap = (h/2) * (f_x(1) + 2*sum(f_x(2:end-1)) + f_x(end));

% Calcular valor exacto (para comparación con función de prueba)
exacto = -cos(b) + cos(a);

% Calcular error absoluto
error = abs(integral_trap - exacto);

% Mostrar resultados
fprintf('\nResultados:\n');
fprintf('Integral aproximada (trapezoidal): %.6f\n', integral_trap);
fprintf('Valor exacto: %.6f\n', exacto);
fprintf('Error absoluto: %.2e\n\n', error);