function [raiz, iter] = newton_raphson(f, df, x0, tol, max_iter)
    % Encuentra la raíz de una función utilizando el método de Newton-Raphson
    % Entradas:
    %   f: función handle de la cual encontrar la raíz (ej. @(x) x^2 - 2)
    %   df: función handle de la derivada de f (ej. @(x) 2*x)
    %   x0: aproximación inicial
    %   tol: tolerancia para la convergencia (por defecto 1e-6)
    %   max_iter: máximo número de iteraciones (por defecto 100)
    % Salidas:
    %   raíz: aproximación de la raíz
    %   iter: número de iteraciones realizadas

    % Establecer valores por defecto si no se proporcionan
    if nargin < 5
        max_iter = 100;
        if nargin < 4
            tol = 1e-6;
        end
    end

    % Inicializar variables
    raiz = x0;
    iter = 0;
    convergencia = false;

    % Bucle principal
    while iter < max_iter
        f_val = f(raiz);
        df_val = df(raiz);
        
        % Verificar división por cero en la derivada
        if df_val == 0
            error('Derivada cero en x=%.6f. El método no puede continuar.', raiz);
        end
        
        % Mostrar información de la iteración
        fprintf('Iteración %d: x = %.6f, f(x) = %.6e\n', iter, raiz, f_val);
        
        % Actualizar la aproximación
        raiz_nueva = raiz - f_val / df_val;
        
        % Verificar convergencia
        if abs(raiz_nueva - raiz) < tol
            convergencia = true;
            break;
        end
        
        raiz = raiz_nueva;
        iter = iter + 1;
    end

    % Resultados finales
    if ~convergencia
        error('El método no convergió en %d iteraciones.', max_iter);
    else
        fprintf('\nRaíz encontrada en x = %.6f después de %d iteraciones.\n', raiz, iter);
    end
end

% Ejemplo de uso (ejecutar en la línea de comandos):
% [raiz, iter] = newton_raphson(@(x) x^2 - 2, @(x) 2*x, 1.5, 1e-6, 100);