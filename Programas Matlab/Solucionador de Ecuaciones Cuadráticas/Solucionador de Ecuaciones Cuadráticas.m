% Este programa resuelve ecuaciones cuadráticas de la forma ax² + bx + c = 0
% y explica cada paso del proceso al usuario.

clc;
disp('=== SOLUCIONADOR DE ECUACIONES CUADRÁTICAS ===');
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

disp(newline);
fprintf('Resolviendo ecuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);

% Caso especial para ecuaciones lineales
if a == 0
    disp('El coeficiente "a" es cero: ecuación lineal');
    if b == 0
        if c == 0
            disp('Todos los números reales son solución');
        else
            disp('No existe solución (ecuación imposible)');
        end
    else
        x = -c/b;
        fprintf('Solución lineal: x = %.2f\n', x);
    end
    return;
end

% Calcular discriminante y raíces para ecuación cuadrática
discriminante = b^2 - 4*a*c;
fprintf('Discriminante D = b² - 4ac = %.2f\n', discriminante);

if discriminante > 0
    disp('Dos raíces reales distintas');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    disp('Una raíz real doble');
    x1 = -b/(2*a);
    x2 = x1;
else
    disp('Raíces complejas conjugadas');
    real_part = -b/(2*a);
    imag_part = sqrt(-discriminante)/(2*a);
    x1 = complex(real_part, imag_part);
    x2 = complex(real_part, -imag_part);
end

% Mostrar resultados
disp('Soluciones:');
fprintf('x₁ = %s\n', num2str(x1));
fprintf('x₂ = %s\n', num2str(x2));