function [raiz, iter] = newton_raphson()
    % ENTRADA:
    %   func: Función handle para f(x) (ejemplo: @(x) x^2 - 2)
    %   dfunc: Función handle para f'(x) (ejemplo: @(x) 2*x)
    %   x0: Valor inicial (predeterminado: 1)
    %   tol: Tolerancia (predeterminado: 1e-6)
    %   max_iter: Máximo de iteraciones (predeterminado: 100)
    %
    % SALIDA:
    %   raiz: Aproximación de la raíz
    %   iter: Iteraciones realizadas
    
    % Configuración inicial
    func = @(x) x^2 - 2;       % Función ejemplo (raíz en sqrt(2))
    dfunc = @(x) 2*x;          % Derivada
    x0 = 1;                    % Valor inicial
    tol = 1e-8;               % Tolerancia de error
    max_iter = 50;            % Límite de iteraciones

    fprintf('Newton-Raphson para f(x) = x^2 - 2:\n');
    
    xn = x0;
    for iter = 1:max_iter
        fxn = func(xn);
        df_xn = dfunc(xn);
        
        if abs(df_xn) < eps    % Evitar división por cero
            error('Derivada cercana a cero en iteración %d', iter);
        end
        
        xn_nuevo = xn - fxn/df_xn;  % Fórmula principal
        error_abs = abs(xn_nuevo - xn);
        
        fprintf('Iter %d: x = %.8f, Error = %.2e\n', iter, xn_nuevo, error_abs);
        
        if error_abs < tol
            raiz = xn_nuevo;
            fprintf('\nConvergencia alcanzada en %d iteraciones\n', iter);
            fprintf('Raíz encontrada: %.8f\n', raiz);
            return
        end
        xn = xn_nuevo;
    end
    error('Máximo de iteraciones alcanzado sin converger');
end