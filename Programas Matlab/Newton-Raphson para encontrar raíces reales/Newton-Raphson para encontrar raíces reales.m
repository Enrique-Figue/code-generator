% Este programa implementa el método de Newton-Raphson para encontrar raíces de funciones
% Entradas interactivas: función, derivada, aproximación inicial, tolerancia y máximo iteraciones
% Muestra iteraciones, resultado final y verificación gráfica

function newton_raphson()
    % Definir función objetivo y su derivada
    f = @(x) x^3 - 2*x^2 - 5;  % Función ejemplo: x³ - 2x² -5
    df = @(x) 3*x^2 - 4*x;      % Derivada de la función

    % Configuración de parámetros
    x0 = input('Ingrese aproximación inicial: ');
    max_iter = input('Número máximo de iteraciones: ');
    tol = input('Tolerancia para convergencia: ');

    % Encabezado de tabla de resultados
    fprintf('\nIter\t x_n\t\t f(x_n)\t\t Error\n');
    fprintf('------------------------------------------\n');

    % Algoritmo principal
    for iter = 1:max_iter
        fx = f(x0);
        dfx = df(x0);
        
        if abs(dfx) < eps
            error('Derivada cercana a cero - método no válido');
        end
        
        x1 = x0 - fx/dfx;  % Fórmula Newton-Raphson
        error_act = abs(x1 - x0);
        
        % Mostrar información de iteración
        fprintf('%3d\t %9.6f\t %9.6f\t %9.6f\n', iter, x0, fx, error_act);
        
        % Criterio de parada
        if error_act < tol
            break;
        end
        
        x0 = x1;
    end

    % Resultados finales
    if iter == max_iter
        fprintf('\nMáximo iteraciones alcanzado\n');
    else
        fprintf('\nSolución encontrada en %d iteraciones\n', iter);
    end
    fprintf('Raíz aproximada: %.8f\n', x0);
    fprintf('Valor en la raíz: %.2e\n', f(x0));

    % Gráfico de verificación
    figure;
    x = linspace(x0-2, x0+2, 100);
    plot(x, f(x), 'b', x0, f(x0), 'ro');
    title('Verificación gráfica de la raíz');
    xlabel('x'); ylabel('f(x)');
    grid on; legend('Función','Raíz aproximada');
end