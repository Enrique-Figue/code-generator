function integral = integradorTrapezoidal(f, a, b, n)
    % Entradas:
    %   f: Función a integrar (handle)
    %   a: Límite inferior de integración
    %   b: Límite superior de integración
    %   n: Número de subintervalos
    % Salida:
    %   integral: Valor aproximado de la integral
    
    % Validación básica de entradas
    if n <= 0
        error('El número de subintervalos debe ser positivo');
    end
    
    % Calcular tamaño de paso
    h = (b - a)/n;
    
    % Crear vector de puntos x
    x = linspace(a, b, n+1);
    
    % Evaluar función en todos los puntos
    y = f(x);
    
    % Aplicar fórmula trapezoidal compuesta
    integral = (h/2) * (y(1) + 2*sum(y(2:end-1)) + y(end));
    
    % Ejemplo de uso:
    % Para integrar sen(x) de 0 a pi con 1000 intervalos:
    % resultado = integradorTrapezoidal(@sin, 0, pi, 1000)
end