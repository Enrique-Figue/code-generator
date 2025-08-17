clc; clear;  % Limpiar consola y workspace

disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

if a == 0
    % Caso ecuación lineal
    if b == 0
        if c == 0
            disp('Ecuación trivial: 0 = 0 (cualquier x es solución)');
        else
            disp('Ecuación contradictoria: no hay solución');
        end
    else
        x = -c/b;
        fprintf('Ecuación lineal. Solución única: x = %.2f\n', x);
    end
else
    % Cálculo del discriminante
    discriminante = b^2 - 4*a*c;
    
    % Determinación del tipo de raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales:\nx1 = %.2f\nx2 = %.2f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Una raíz real doble:\nx = %.2f\n', x);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        fprintf('Dos raíces complejas:\nx1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n',...
                realPart, imagPart, realPart, imagPart);
    end
end