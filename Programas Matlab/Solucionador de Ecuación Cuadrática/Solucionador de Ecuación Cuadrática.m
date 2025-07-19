clear; clc;
disp('Solucionador de Ecuación Cuadrática');
disp('------------------------------------');
disp('Resuelve ax² + bx + c = 0 y muestra las raíces.');
disp(' ');

% Obtener coeficientes
coeficientes = {'a', 'b', 'c'};
vals = zeros(1,3);
for i = 1:3
    while true
        str = input(['Ingrese el coeficiente ', coeficientes{i}, ': '], 's');
        val = str2double(str);
        if isnan(val)
            disp('Error: Ingrese un número válido.');
        else
            if i == 1 && val == 0
                disp('Error: a no puede ser cero.');
            else
                vals(i) = val;
                break;
            end
        end
    end
end
a = vals(1); b = vals(2); c = vals(3);

% Calcular discriminante
D = b^2 - 4*a*c;

% Calcular y mostrar raíces
fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
fprintf('Discriminante D = %.2f\n', D);

if D > 0
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    fprintf('Dos raíces reales distintas:\n  x1 = %.4f\n  x2 = %.4f\n', x1, x2);
elseif D == 0
    x = -b / (2*a);
    fprintf('Una raíz real doble:\n  x = %.4f\n', x);
else
    realPart = -b / (2*a);
    imagPart = sqrt(-D) / (2*a);
    fprintf('Dos raíces complejas conjugadas:\n  x1 = %.4f + %.4fi\n  x2 = %.4f - %.4fi\n', realPart, imagPart, realPart, imagPart);
end