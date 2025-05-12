% Descripción: Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0,
%              calculando sus raíces reales o complejas, y provee análisis detallado del resultado.

function raices_cuadraticas
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese el coeficiente a: ');
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Caso especial para ecuación lineal
    if a == 0
        if b == 0
            if c == 0
                disp('La ecuación es trivial: 0 = 0 (infinitas soluciones)');
            else
                disp('Ecuación contradictoria: c ≠ 0 (sin solución)');
            end
        else
            fprintf('Ecuación lineal: x = %.4f\n', -c/b);
        end
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante: %.4f\n', discriminante);
    
    % Calcular raíces según el discriminante
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        disp('Raíces reales y distintas:');
        fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        disp('Raíz real doble:');
        fprintf('x = %.4f\n', x);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        disp('Raíces complejas conjugadas:');
        fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Análisis adicional
    fprintf('\nAnálisis:\n');
    fprintf('- Vértice de la parábola: (%.4f, %.4f)\n', -b/(2*a), -discriminante/(4*a));
    if discriminante >= 0
        fprintf('- Intersección con el eje X en los puntos calculados\n');
    else
        fprintf('- No hay intersecciones reales con el eje X\n');
    end
    if a > 0
        disp('- La parábola se abre hacia arriba (mínimo en el vértice)');
    else
        disp('- La parábola se abre hacia abajo (máximo en el vértice)');
    end
end