% Programa educativo para encontrar raíces mediante el método de Newton-Raphson
% Define la función y su derivada (modificables según necesidad)
f = @(x) x^3 - 2*x - 5;   % Función a resolver: f(x) = x³ - 2x -5
df = @(x) 3*x^2 - 2;      % Derivada: f'(x) = 3x² -2

% Parámetros iniciales
x0 = 2;           % Valor inicial
tol = 1e-6;       % Tolerancia de convergencia
max_iter = 50;    % Máximo número de iteraciones

% Almacenar valores para mostrar tabla de iteración
iteraciones = [];
valores_x = [];
valores_fx = [];

% Cabecera de resultados
fprintf('Método de Newton-Raphson para f(x) = x³ - 2x -5\n');
fprintf('Iter\tx_n\t\tf(x_n)\n');

% Algoritmo principal
for iter = 1:max_iter
    fx = f(x0);
    dfx = df(x0);
    
    % Guardar datos para tabla
    iteraciones(end+1) = iter;
    valores_x(end+1) = x0;
    valores_fx(end+1) = fx;
    
    % Mostrar progreso
    fprintf('%d\t%.6f\t%9.6f\n', iter, x0, fx);
    
    % Verificar convergencia
    if abs(fx) < tol
        fprintf('\nConvergencia alcanzada en %d iteraciones.\n', iter);
        fprintf('Raíz encontrada: x = %.6f\n', x0);
        return;
    end
    
    % Evitar división por cero
    if dfx == 0
        error('Derivada cero en x = %.6f. Detención del algoritmo.', x0);
    end
    
    % Calcular siguiente iteración
    x0 = x0 - fx/dfx;
end

% Si se excede el máximo de iteraciones
fprintf('\nNo se alcanzó convergencia en %d iteraciones.\n', max_iter);