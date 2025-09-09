% Descripción: Calcula la integral definida de una función usando la Regla de Simpson 1/3
% Entradas interactivas: función, límites de integración, número de subintervalos
% Salidas: Valor aproximado, valor exacto (con integral de MATLAB) y error absoluto

function simpson_approximation
    % Solicitar entrada de usuario
    f = input('Ingrese la función f(x) (ej. @(x) x.^2): ');
    a = input('Límite inferior a: ');
    b = input('Límite superior b: ');
    n = input('Número de subintervalos (PAR): ');
    
    % Validar que n sea par
    if mod(n,2) ~= 0
        n = n + 1;
        fprintf('Ajustando n a número par: %d\n', n);
    end
    
    % Calcular aproximación por Regla de Simpson
    h = (b - a)/n;
    x = a:h:b;
    y = f(x);
    
    sum_par = sum(y(2:2:end-1));
    sum_impar = sum(y(3:2:end-2));
    
    aproximacion = (h/3) * (y(1) + 4*sum_par + 2*sum_impar + y(end));
    
    % Calcular valor exacto con función integrada de MATLAB
    exacto = integral(f, a, b);
    
    % Calcular error absoluto
    error = abs(exacto - aproximacion);
    
    % Mostrar resultados
    fprintf('\nResultados:\n');
    fprintf('Aproximación Simpson: %.6f\n', aproximacion);
    fprintf('Valor exacto (integral): %.6f\n', exacto);
    fprintf('Error absoluto: %.2e\n\n', error);
end