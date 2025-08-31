% Descripción: Calcula la integral definida de una función usando la regla del trapecio
% y compara el resultado con la solución exacta para fines educativos.

function integral = trapecio()
    % Parámetros iniciales
    a = 0;          % Límite inferior de integración
    b = 1;          % Límite superior de integración
    N = 100;        % Número de subintervalos
    h = (b - a)/N;  % Ancho de cada subintervalo
    
    % Función a integrar (puede modificarse)
    f = @(x) x.^2;  % Función ejemplo: f(x) = x²
    
    % Cálculo numérico usando regla del trapecio
    x = linspace(a, b, N+1);  % Puntos de evaluación
    sumatorio = sum(f(x(2:end-1)));  % Suma de términos intermedios
    integral = (h/2) * (f(a) + 2*sumatorio + f(b));  % Fórmula compuesta
    
    % Cálculo de solución exacta para comparación
    exacto = 1/3;  % Valor exacto de ∫₀¹ x² dx = 1/3
    error = abs(exacto - integral);
    
    % Mostrar resultados
    fprintf('Integral numérica:  %.5f\n', integral);
    fprintf('Valor exacto:        %.5f\n', exacto);
    fprintf('Error absoluto:     %.2e\n', error);
    fprintf('\nNota: Modifique "f", "a", "b" o "N" para explorar diferentes casos');
end