% Este programa implementa el método de Newton-Raphson para encontrar una raíz
% de la función f(x) = x² - 2. El usuario ingresa una aproximación inicial y el
% número máximo de iteraciones. Incluye manejo de errores y documentación detallada.

disp('Método de Newton-Raphson para encontrar raíz de f(x) = x² - 2');
f = @(x) x^2 - 2;          % Función a analizar
df = @(x) 2*x;             % Derivada de f(x)

x0 = input('Ingrese la aproximación inicial (x0): ');
max_iter = input('Ingrese el número máximo de iteraciones: ');
tolerancia = 1e-6;         % Tolerancia para convergencia

iter = 0;
x_actual = x0;
error = abs(f(x_actual));

while error > tolerancia && iter < max_iter
    if df(x_actual) == 0
        disp('Error: Derivada cero en la aproximación actual. Deteniendo el proceso.');
        break;
    end
    x_nuevo = x_actual - f(x_actual)/df(x_actual); % Fórmula Newton-Raphson
    error = abs(f(x_nuevo));
    iter = iter + 1;
    x_actual = x_nuevo;
end

if error <= tolerancia
    fprintf('Raíz encontrada en x = %.6f después de %d iteraciones.\n', x_actual, iter);
else
    fprintf('No se alcanzó convergencia en %d iteraciones. Mejor aproximación: x = %.6f\n', max_iter, x_actual);
end