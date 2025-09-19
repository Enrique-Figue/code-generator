clc; clear;  % Limpiar consola y workspace

fprintf('Resolución de ecuación cuadrática ax² + bx + c = 0\n');

% Solicitar coeficientes al usuario
a = input('Ingrese coeficiente a: ');
while a == 0  % Validar que a no sea cero
    a = input('a no puede ser cero. Ingrese nuevo valor de a: ');
end
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nPaso 1: Discriminante D = b² - 4ac = %.2f\n', discriminante);

% Determinar naturaleza de las raíces
if discriminante > 0
    fprintf('D > 0 → Dos raíces reales distintas\n');
elseif discriminante == 0
    fprintf('D = 0 → Una raíz real doble\n');
else
    fprintf('D < 0 → Dos raíces complejas conjugadas\n');
end

% Calcular raíces
parte_real = -b/(2*a);
parte_imag = sqrt(abs(discriminante))/(2*a);

if discriminante >= 0  % Raíces reales
    raiz1 = parte_real + parte_imag;
    raiz2 = parte_real - parte_imag;
else  % Raíces complejas
    raiz1 = complex(parte_real, parte_imag);
    raiz2 = complex(parte_real, -parte_imag);
end

% Mostrar resultados
fprintf('\nPaso 2: Fórmula cuadrática aplicada\n');
if discriminante == 0
    fprintf('Raíz única: x = %.2f\n', raiz1);
else
    fprintf('Raíz 1: %.2f\nRaíz 2: %.2f\n', raiz1, raiz2);
end

fprintf('\nLa ecuación %.2fx² + %.2fx + %.2f tiene las soluciones:\n', a, b, c);
disp([raiz1, raiz2])