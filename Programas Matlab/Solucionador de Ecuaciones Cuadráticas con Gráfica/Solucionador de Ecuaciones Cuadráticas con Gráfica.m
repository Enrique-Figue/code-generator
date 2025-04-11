% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% calcula sus raíces y grafica la función en el rango que incluye las raíces.

clc; clear; close all;

% Solicitar coeficientes al usuario con validación para 'a'
while true
    a = input('Ingrese el coeficiente a (diferente de cero): ');
    if a ~= 0
        break;
    else
        disp('Error: a no puede ser cero para una ecuación cuadrática.');
    end
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    raices = [x1, x2];
    tipo_raices = 'dos raíces reales distintas';
elseif discriminante == 0
    x1 = -b / (2*a);
    raices = x1;
    tipo_raices = 'una raíz real doble';
else
    parte_real = -b / (2*a);
    parte_imag = sqrt(abs(discriminante)) / (2*a);
    raices = [parte_real + parte_imag*1i, parte_real - parte_imag*1i];
    tipo_raices = 'dos raíces complejas conjugadas';
end

% Mostrar resultados
fprintf('\nResultados para %dx² + %dx + %d = 0:\n', a, b, c);
fprintf('Discriminante: %.2f (%s)\n', discriminante, tipo_raices);
fprintf('Raíces encontradas:\n');
disp(raices);

% Crear vector x para graficar
x = linspace(min(raices) - 2, max(raices) + 2, 400);
y = a*x.^2 + b*x + c;

% Graficar la función
figure;
plot(x, y, 'LineWidth', 2);
hold on;
scatter(real(raices), zeros(size(raices)), 100, 'r', 'filled');
grid on;
xlabel('x');
ylabel('f(x)');
title('Gráfico de la Función Cuadrática');
legend(sprintf('%dx² + %dx + %d', a, b, c), 'Raíces', 'Location', 'best');