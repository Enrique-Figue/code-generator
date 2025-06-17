% Descripción: Calcula la integral definida de una función usando la regla trapezoidal
%              y muestra comparación con el valor exacto para fines educativos
% Uso: Ejecutar el script directamente. Ejemplo incluido para f(x) = sin(x) en [0, pi]

function resultado = integrador_trapezoidal()
    % Parámetros de integración
    a = 0;          % Límite inferior
    b = pi;         % Límite superior
    n = 1000;       % Número de subintervalos
    f = @(x) sin(x); % Función a integrar
    
    % Cálculo de la aproximación trapezoidal
    h = (b - a)/n;          % Ancho de subintervalo
    suma = 0;               % Inicializar suma
    
    % Sumatoria de puntos internos
    for i = 1:n-1
        x_i = a + i*h;
        suma = suma + f(x_i);
    end
    
    % Fórmula compuesta de la regla trapezoidal
    aproximacion = (h/2) * (f(a) + 2*suma + f(b));
    
    % Valor exacto para comparación (integral de sin(x) en [0, pi])
    exacto = 2;
    
    % Mostrar resultados comparativos
    fprintf('=== Resultados de Integración Numérica ===\n');
    fprintf('Método usado: Regla Trapezoidal compuesta\n');
    fprintf('Subintervalos: %d\n', n);
    fprintf('Aproximación obtenida: %.6f\n', aproximacion);
    fprintf('Valor exacto: %.6f\n', exacto);
    fprintf('Error absoluto: %.6f\n', abs(exacto - aproximacion));
    fprintf('Error relativo porcentual: %.4f%%\n', 100*abs((exacto - aproximacion)/exacto));
    
    resultado = aproximacion;
end