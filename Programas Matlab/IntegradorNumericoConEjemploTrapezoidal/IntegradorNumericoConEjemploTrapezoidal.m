function resultado = IntegradorNumericoConEjemploTrapezoidal(f, a, b, n)
    % Integración numérica usando la regla del trapecio con ejemplo didáctico
    %
    % Inputs:
    %   f : función handle para integrar (ej. @(x) sin(x))
    %   a : límite inferior de integración
    %   b : límite superior de integración
    %   n : número de subintervalos (debe ser entero positivo)
    %
    % Output:
    %   resultado : valor numérico de la integral
    %
    % Ejemplo integrado:
    %   Calcula la integral de sen(x) de 0 a pi y compara con solución exacta
    
    % Validación de parámetros con valores por defecto para demostración
    if nargin == 0
        help IntegradorNumericoConEjemploTrapezoidal
        fprintf('\nEjemplo automatico:\n')
        f = @(x) sin(x);
        a = 0;
        b = pi;
        n = 100;
    end
    
    % Verificar función válida
    if ~isa(f, 'function_handle')
        error('El primer argumento debe ser un function handle');
    end
    
    % Verificar intervalos válidos
    if a >= b
        error('El límite inferior a debe ser menor que el superior b');
    end
    
    % Verificar n entero positivo
    if floor(n) ~= n || n <= 0
        error('n debe ser un entero positivo');
    end
    
    % Calculo de la integral usando regla del trapecio
    h = (b - a)/n;
    x = linspace(a, b, n+1);
    y = f(x);
    
    resultado = (h/2) * (y(1) + 2*sum(y(2:end-1)) + y(end));
    
    % Demostración didáctica si se ejecutan los valores por defecto
    if nargin == 0
        exacto = 2;  % Integral exacta de sin(x) de 0 a pi
        error_pct = abs(resultado - exacto)/exacto * 100;
        
        fprintf('=== Resultado del ejemplo ===\n');
        fprintf('Función: sin(x)\nLímites: [0, pi]\n');
        fprintf('Resultado numérico: %.6f\n', resultado);
        fprintf('Valor exacto: %.6f\nError relativo: %.2f%%\n', exacto, error_pct);
    end
end