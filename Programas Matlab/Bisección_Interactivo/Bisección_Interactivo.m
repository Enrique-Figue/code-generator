function Biseccion_Interactivo
    % Programa educativo para resolver ecuaciones mediante el método de bisección
    % Permite entrada de función, calcula raíz en intervalo y muestra gráficos
    
    % Configurar entorno gráfico
    figure('Name','Método de Bisección','NumberTitle','off');
    clf; hold on; grid on;
    xlabel('x'); ylabel('f(x)'); title('Búsqueda de Raíces por Bisección');
    
    % Entrada de usuario
    f = input('Ingrese función (ej: @(x) x.^2 - 3): ');
    a = input('Límite inferior a: ');
    b = input('Límite superior b: ');
    tol = input('Tolerancia (ej: 1e-6): ');
    
    % Verificar teorema de Bolzano
    if f(a)*f(b) >= 0
        error('El intervalo no cumple condiciones del teorema de Bolzano');
    end
    
    % Preparar gráfico
    x_vals = linspace(a-0.5, b+0.5, 1000);
    plot(x_vals, f(x_vals), 'b-', 'LineWidth', 1.5);
    plot([a b], [0 0], 'k--');
    
    % Inicializar variables
    iter = 0;
    resultados = [];
    c_prev = a;
    
    % Algoritmo de bisección
    while (b - a) > tol
        c = (a + b)/2;
        fc = f(c);
        
        % Registrar resultados
        iter = iter + 1;
        resultados(iter,:) = [iter, a, b, c, fc, b-a];
        
        % Actualizar intervalo
        if f(a)*fc < 0
            b = c;
        else
            a = c;
        end
        
        % Visualización dinámica
        plot(c, 0, 'ro', 'MarkerSize', 6);
        plot(c, fc, 'go', 'MarkerSize', 6);
        plot([c, c], [0, fc], 'm:');
        c_prev = c;
    end
    
    % Añadir leyenda y resultados finales
    legend({'Función','Eje x','Aproximaciones','f(c)'}, 'Location','best');
    fprintf('\nRaíz encontrada: %.8f en %d iteraciones\n', c, iter);
    fprintf('Intervalo final: [%.8f, %.8f]\nError aproximado: %.2e\n', a, b, b-a);
    
    % Mostrar tabla de resultados
    disp('  Iter      a           b           c           f(c)        Error');
    disp(resultados);
end