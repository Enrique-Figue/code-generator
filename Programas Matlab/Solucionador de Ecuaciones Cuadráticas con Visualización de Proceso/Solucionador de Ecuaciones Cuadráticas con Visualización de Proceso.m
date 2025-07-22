% Este programa calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
% demostrando el proceso paso a paso, validación de entradas y manipulación de números complejos.

function raices_cuadraticas
    % Solicitar coeficientes al usuario
    disp('Solución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese el coeficiente a: ');
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Validar que el coeficiente principal no sea cero
    if a == 0
        error('El coeficiente a no puede ser cero (no es ecuación cuadrática)');
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante D = b² - 4ac = %.2f\n', discriminante);
    
    % Calcular y mostrar raíces según el discriminante
    if discriminante > 0
        disp('Dos raíces reales distintas:');
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
    elseif discriminante == 0
        disp('Una raíz real doble:');
        x1 = -b/(2*a);
        x2 = x1;
    else
        disp('Dos raíces complejas conjugadas:');
        parte_real = -b/(2*a);
        parte_imag = sqrt(abs(discriminante))/(2*a);
        x1 = complex(parte_real, parte_imag);
        x2 = complex(parte_real, -parte_imag);
    end
    
    % Mostrar resultados finales
    fprintf('x₁ = %s\n', num2str(x1));
    fprintf('x₂ = %s\n\n', num2str(x2));
    
    % Mostrar ecuación factorizada (solo para raíces exactas)
    if imag(x1) == 0
        fprintf('Forma factorizada aproximada:\n');
        fprintf('%.2f(x - %.2f)(x - %.2f) = 0\n', a, x1, x2);
    else
        disp('Forma factorizada con números complejos:');
        fprintf('%.2f(x - (%s))(x - (%s)) = 0\n', a, num2str(x1), num2str(x2));
    end
end