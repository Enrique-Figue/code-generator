% Descripción: Calcula la integral definida de una función usando la Regla de Simpson 1/3
%              y compara con la función integral de MATLAB para mostrar precisión

clear; clc;

% Solicitar entrada al usuario
funcion = input('Ingrese la función f(x) (ejemplo: @(x) x.^2): ');
a = input('Límite inferior a: ');
b = input('Límite superior b: ');
N = input('Número de subintervalos (par): ');

% Forzar N par si es impar
if mod(N,2) ~= 0
    N = N + 1;
    fprintf('\nSe ajustó N a %d (par)\n', N);
end

% Cálculo por Regla de Simpson
h = (b - a)/N;
x = a:h:b;
y = funcion(x);
resultado_simpson = h/3 * (y(1) + 4*sum(y(2:2:end-1)) + 2*sum(y(3:2:end-2)) + y(end));

% Cálculo con función integral de MATLAB
resultado_integral = integral(funcion, a, b);

% Mostrar resultados
fprintf('\nResultado por Regla de Simpson: %.6f', resultado_simpson);
fprintf('\nResultado con integral():       %.6f', resultado_integral);
fprintf('\nDiferencia: %.2e\n', abs(resultado_simpson - resultado_integral));