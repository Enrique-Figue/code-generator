% Descripción: Calcula la integral definida de una función usando la regla de Simpson
% Uso: Proporcionar función, límites a, b y número de subintervalos (par)
% Salida: Resultado numérico y gráfica de la función con áreas de aproximación

function resultado = integrar_simpson()
    % Solicitar entradas al usuario
    f = input('Ingrese la función (ej. @(x) x.^2): ');
    a = input('Límite inferior a: ');
    b = input('Límite superior b: ');
    n = input('Número de subintervalos (par): ');
    
    % Ajustar n para asegurar que sea par
    if mod(n,2) ~= 0
        n = n + 1;
        fprintf('Ajustando n a %d (par)\n', n);
    end
    
    h = (b - a)/n; % Calcular ancho de subintervalo
    x = a:h:b; % Crear vector de puntos x
    y = f(x); % Evaluar la función
    
    % Aplicar regla de Simpson: (h/3)*[f(a) + 4Σimpares + 2Σpares + f(b)]
    suma_impares = sum(y(2:2:end-1));
    suma_pares = sum(y(3:2:end-2));
    integral = (h/3)*(y(1) + 4*suma_impares + 2*suma_pares + y(end));
    
    % Mostrar resultado
    fprintf('\nIntegral aproximada: %.6f\n', integral);
    
    % Graficar función y áreas
    figure;
    hold on;
    area(x, y, 'FaceColor', [0.8 0.9 1]); % Áreas bajo la curva
    fplot(f, [a b], 'LineWidth', 2, 'Color', 'b'); % Función original
    title(['Integral: ' num2str(integral)]);
    xlabel('x'); ylabel('f(x)');
    grid on;
end

% Ejemplo de uso:
% >> integrar_simpson()
% Ingresar: @(x) sin(x), a=0, b=pi, n=100
% Resultado esperado ≈ 2.0