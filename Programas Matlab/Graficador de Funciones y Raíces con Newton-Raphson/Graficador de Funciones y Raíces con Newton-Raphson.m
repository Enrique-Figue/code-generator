% Este programa grafica una función matemática y encuentra sus raíces utilizando el método de Newton-Raphson.
% El usuario ingresa la función, un punto inicial y el número de iteraciones.
% Se incluye visualización de la función, aproximaciones y errores.

function graficador_newton_raphson
    % Solicitar entrada de usuario
    func_str = input('Ingrese la función f(x) (ej. @(x) x^2 - 4): ', 's');
    f = str2func(func_str);
    x0 = input('Ingrese el valor inicial x0: ');
    max_iter = input('Ingrese el número máximo de iteraciones: ');
    
    % Configurar gráfico de la función
    x_vals = linspace(x0 - 5, x0 + 5, 1000);
    plot(x_vals, f(x_vals), 'b-', 'LineWidth', 1.5);
    hold on;
    grid on;
    title(['Función: ' func_str ' y Aproximación de Raíces']);
    xlabel('x'); ylabel('f(x)');
    
    % Método de Newton-Raphson
    df = derivada_numerica(f);  % Derivada numérica
    xn = x0;
    errors = [];
    
    for i = 1:max_iter
        fn = f(xn);
        dfn = df(xn);
        
        if dfn == 0
            fprintf('Derivada cero en iteración %d. Deteniendo...\n', i);
            break;
        end
        
        xn_new = xn - fn/dfn;
        errors(end+1) = abs(xn_new - xn);  % Error absoluto
        
        % Graficar punto actual
        plot(xn, fn, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
        plot([xn, xn_new], [fn, 0], 'k--');
        
        xn = xn_new;
    end
    
    % Mostrar resultados
    fprintf('\nAproximación de raíz: %.6f\n', xn);
    fprintf('Iteraciones realizadas: %d\n', length(errors));
    
    % Graficar última aproximación
    plot(xn, 0, 'gp', 'MarkerSize', 12, 'MarkerFaceColor', 'g');
    legend('Función', 'Aproximaciones', 'Tangentes', 'Raíz estimada');
    
    % Gráfico de convergencia del error
    figure;
    semilogy(1:length(errors), errors, 'm-s', 'LineWidth', 1.2);
    title('Convergencia del Error');
    xlabel('Iteración'); ylabel('Error (log)');
    grid on;
end

function df = derivada_numerica(f)
    % Calcula la derivada numéricamente usando diferencia centrada
    h = 1e-6;  % Paso de diferenciación
    df = @(x) (f(x + h) - f(x - h))/(2*h);
end