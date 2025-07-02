% Descripción: Implementa el método de Newton-Raphson para encontrar raíces de funciones
% Uso: Ejecutar el script para obtener una solución numérica de ejemplo

% Definir función ejemplo y su derivada
f = @(x) x^3 - 2*x^2 - 5;  % Función a resolver: f(x) = 0
df = @(x) 3*x^2 - 4*x;     % Derivada de la función

% Parámetros iniciales
x0 = 3;          % Valor inicial
tol = 1e-6;      % Tolerancia de convergencia
maxIter = 100;   % Máximo de iteraciones

% Llamar al método de Newton-Raphson
[root, iter] = NewtonRaphson(f, df, x0, tol, maxIter);

% Mostrar resultados
fprintf('Raíz encontrada: %.6f\n', root);
fprintf('Iteraciones realizadas: %d\n', iter);
fprintf('Valor final f(x): %.2e\n', f(root));

function [root, iter] = NewtonRaphson(f, df, x0, tol, maxIter)
    % Entrada:
    %   f: función handle (función objetivo)
    %   df: función handle (derivada de f)
    %   x0: aproximación inicial
    %   tol: tolerancia para convergencia
    %   maxIter: número máximo de iteraciones
    % Salida:
    %   root: aproximación de la raíz
    %   iter: iteraciones realizadas
    
    iter = 0;
    x = x0;
    
    while iter < maxIter
        fx = f(x);
        dfx = df(x);
        
        if abs(dfx) < eps  % Evitar división por cero
            error('Derivada cercana a cero. Método no válido.');
        end
        
        x_new = x - fx/dfx;  % Fórmula de Newton-Raphson
        iter = iter + 1;
        
        if abs(x_new - x) < tol  % Verificar convergencia
            root = x_new;
            return
        end
        
        x = x_new;
    end
    
    warning('Máximo de iteraciones alcanzado. Resultado puede no ser preciso.');
    root = x;
end