function eulerMethod(dy, t0, y0, h, tf)
    % Solución numérica de EDOs usando el Método de Euler
    % dy: Función derivada dy/dt = f(t, y)
    % t0: Tiempo inicial
    % y0: Valor inicial y(t0)
    % h: Paso de tiempo
    % tf: Tiempo final
    
    t = t0:h:tf; % Vector de tiempo
    n = length(t); % Número de puntos
    y = zeros(n,1); % Inicializar solución
    y(1) = y0; % Condición inicial
    
    % Iteración de Euler
    for i = 1:n-1
        y(i+1) = y(i) + h * dy(t(i), y(i));
    end
    
    % Graficar resultados
    plot(t, y, 'b-o');
    xlabel('Tiempo (t)');
    ylabel('y(t)');
    title('Solución por Método de Euler');
    grid on;
end

% Ejemplo de uso:
% Define la EDO: dy/dt = -0.5*y
% dydt = @(t,y) -0.5*y;
% eulerMethod(dydt, 0, 100, 0.1, 5);