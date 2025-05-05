% Descripción: Este programa calcula las raíces reales o complejas de una ecuación cuadrática de la forma ax² + bx + c = 0,
%              incluyendo validación para entrada no válida (a=0) y explicación detallada de los resultados.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Validar si es ecuación cuadrática
if a == 0
    disp('Error: a no puede ser cero en una ecuación cuadrática.')
    disp('Solución alternativa para ecuación lineal bx + c = 0:')
    if b == 0
        if c == 0
            disp('La ecuación 0 = 0 tiene infinitas soluciones.')
        else
            disp('La ecuación no tiene solución (contradicción).')
        end
    else
        x = -c / b;
        fprintf('Solución lineal única: x = %.2f\n', x)
    end
    return
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Determinar tipo de raíces y calcular soluciones
if discriminante > 0
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    fprintf('Dos raíces reales distintas:\n x₁ = %.2f\n x₂ = %.2f\n', x1, x2)
elseif discriminante == 0
    x = -b / (2*a);
    fprintf('Una raíz real doble:\n x = %.2f\n', x)
else
    parte_real = -b / (2*a);
    parte_imag = sqrt(abs(discriminante)) / (2*a);
    fprintf('Dos raíces complejas conjugadas:\n x₁ = %.2f + %.2fi\n x₂ = %.2f - %.2fi\n',...
            parte_real, parte_imag, parte_real, parte_imag)
end