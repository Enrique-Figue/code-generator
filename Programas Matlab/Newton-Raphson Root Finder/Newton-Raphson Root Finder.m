% Programa interactivo para encontrar raíces de ecuaciones usando el método de Newton-Raphson
% Entradas: función, derivada, punto inicial, tolerancia e iteraciones máximas
% Salidas: Raíz aproximada, historia de convergencia y gráfica de iteraciones

clc; clear; close all;

% Solicitar entradas al usuario
func_str = input('Ingrese la función f(x) (ej. @(x) x^2 - 3): ');
dfunc_str = input('Ingrese la derivada df(x) (ej. @(x) 2*x): ');
x0 = input('Ingrese aproximación inicial (x0): ');
tol = input('Ingrese tolerancia (ej. 1e-6): ');
max_iter = input('Ingrese máximo número de iteraciones: ');

% Inicializaciones
iter = 0;
error = Inf;
historial = zeros(max_iter, 2); % [xn, f(xn)]

% Algoritmo de Newton-Raphson
while error > tol && iter < max_iter
    fxn = func_str(x0);
    dfxn = dfunc_str(x0);
    
    if dfxn == 0
        error('Derivada cero detectada. Método no converge.');
    end
    
    x1 = x0 - fxn/dfxn;
    error = abs(x1 - x0);
    
    iter = iter + 1;
    historial(iter,:) = [x1, fxn];
    x0 = x1;
end

% Mostrar resultados
fprintf('\nResultados:');
if error <= tol
    fprintf('\nRaíz encontrada en x = %.6f en %d iteraciones\n', x0, iter);
else
    fprintf('\nMáximo de iteraciones alcanzado. Mejor aproximación: %.6f\n', x0);
end

% Graficar función e iteraciones
fplot(func_str, [x0-3 x0+3], 'b'); hold on;
plot(historial(1:iter,1), zeros(iter,1), 'ro', 'MarkerFaceColor', 'r');
title('Método de Newton-Raphson');
xlabel('x'); ylabel('f(x)');
legend('Función', 'Iteraciones', 'Location', 'NorthWest');
grid on; hold off;