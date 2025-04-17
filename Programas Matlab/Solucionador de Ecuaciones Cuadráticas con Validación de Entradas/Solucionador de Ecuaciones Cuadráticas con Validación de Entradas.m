% Descripción: Este programa calcula las raíces de una ecuación cuadrática ax²+bx+c=0
%              incluyendo verificación de coeficientes válidos y análisis del discriminante.

function raices_cuadraticas()
    % Solicitar coeficiente a con validación
    a = 0;
    while a == 0
        a = input('Ingrese el coeficiente a (diferente de cero): ');
        if a == 0
            disp('Error: El coeficiente a no puede ser cero para una ecuación cuadrática');
        end
    end
    
    % Solicitar coeficientes restantes
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante calculado: %.2f\n', discriminante);
    
    % Calcular y mostrar raíces según el discriminante
    if discriminante > 0
        % Dos raíces reales distintas
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        disp('La ecuación tiene dos raíces reales distintas:');
        fprintf('x1 = %.4f\nx2 = %.4f\n', x1, x2);
    elseif discriminante == 0
        % Una raíz real doble
        x = -b/(2*a);
        disp('La ecuación tiene una raíz real doble:');
        fprintf('x = %.4f\n', x);
    else
        % Raíces complejas conjugadas
        parte_real = -b/(2*a);
        parte_imag = sqrt(abs(discriminante))/(2*a);
        disp('La ecuación tiene raíces complejas conjugadas:');
        fprintf('x1 = %.4f + %.4fi\n', parte_real, parte_imag);
        fprintf('x2 = %.4f - %.4fi\n', parte_real, parte_imag);
    end
end