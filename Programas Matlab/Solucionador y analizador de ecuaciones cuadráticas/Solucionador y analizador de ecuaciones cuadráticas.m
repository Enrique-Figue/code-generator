function quadratic_solver()
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática: ax² + bx + c = 0');
    a = input('Ingrese el coeficiente a: ');
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Manejar caso de ecuación lineal si a = 0
    if a == 0
        disp('El coeficiente a es cero: esto es una ecuación lineal');
        if b == 0
            if c == 0
                disp('Ec. trivial: todos los reales son solución');
            else
                disp('Ec. imposible: no existe solución');
            end
        else
            x = -c/b;
            fprintf('Solución única: x = %.4f\n', x);
        end
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante D = %.2f\n', discriminante);
    
    % Determinar tipo de raíces
    if discriminante > 0
        disp('D > 0: Dos raíces reales distintas');
    elseif discriminante == 0
        disp('D = 0: Una raíz real doble');
    else
        disp('D < 0: Dos raíces complejas conjugadas');
    end
    
    % Calcular y mostrar raíces
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    
    if discriminante >= 0
        x1 = parte_real + parte_imag;
        x2 = parte_real - parte_imag;
        fprintf('x1 = %.4f\nx2 = %.4f\n', x1, x2);
    else
        fprintf('x1 = %.4f + %.4fi\n', parte_real, parte_imag);
        fprintf('x2 = %.4f - %.4fi\n', parte_real, parte_imag);
    end
    
    % Explicación adicional
    disp(' ');
    disp('FORMULA GENERAL:');
    disp('x = [-b ± sqrt(b²-4ac)]/(2a)');
    disp('D = b² - 4ac determina la naturaleza de las raíces');
end