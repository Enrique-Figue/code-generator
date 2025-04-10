% Descripción: Calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
%              mostrando el discriminante, tipo de raíces y soluciones numéricas

function cuadratica()
    % Mostrar encabezado explicativo
    disp('SOLUCIONADOR DE ECUACIÓN CUADRÁTICA');
    disp('----------------------------------');
    disp('Formato: ax² + bx + c = 0');
    
    % Solicitar coeficientes al usuario
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Manejar caso ecuación lineal (a=0)
    if a == 0
        disp(' ');
        disp('ADVERTENCIA: Coeficiente cuadrático cero');
        if b == 0
            if c == 0
                disp('Ecuación válida para todo x (identidad)');
            else
                disp('Ecuación sin solución (contradicción)');
            end
        else
            x = -c/b;
            fprintf('Ecuación lineal - Solución única: x = %.4f\n', x);
        end
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Mostrar información del discriminante
    fprintf('\nDISCRIMINANTE: %.2f\n', discriminante);
    if discriminante > 0
        disp('Tipo: Dos raíces reales distintas');
    elseif discriminante == 0
        disp('Tipo: Una raíz real doble');
    else
        disp('Tipo: Dos raíces complejas conjugadas');
    end
    
    % Calcular y mostrar raíces
    parte_real = -b/(2*a);
    parte_imaginaria = sqrt(abs(discriminante))/(2*a);
    
    if discriminante >= 0
        x1 = parte_real + parte_imaginaria;
        x2 = parte_real - parte_imaginaria;
        fprintf('\nSOLUCIONES:\nx₁ = %.4f\nx₂ = %.4f\n', x1, x2);
    else
        fprintf('\nSOLUCIONES COMPLEJAS:\nx₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n',...
                parte_real, parte_imaginaria, parte_real, parte_imaginaria);
    end
    
    % Mostrar forma factorizada
    fprintf('\nFORMA FACTORIZADA:\n');
    if discriminante >= 0
        fprintf('%.2f(x - %.4f)(x - %.4f)\n', a, x1, x2);
    else
        fprintf('%.2f[(x - %.4f)² + %.4f]\n', a, parte_real, parte_imaginaria^2);
    end
end