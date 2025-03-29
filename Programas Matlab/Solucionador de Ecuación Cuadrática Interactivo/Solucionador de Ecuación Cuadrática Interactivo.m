% Descripción: Calcula y muestra las raíces de una ecuación cuadrática ax² + bx + c = 0,
%              explicando el proceso y los conceptos matemáticos involucrados.

clc;
disp('SOLUCIONADOR DE ECUACIÓN CUADRÁTICA');
disp('----------------------------------');
disp('Este programa resuelve ecuaciones de la forma: ax² + bx + c = 0');
disp('Ingrese los coeficientes numéricos solicitados:');

% Entrada de coeficientes
a = input('Coeficiente a: ');
b = input('Coeficiente b: ');
c = input('Coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nPASO 1: Cálculo del discriminante');
fprintf('\nDiscriminante D = b² - 4ac = %.2f² - 4*%.2f*%.2f = %.2f\n', b, a, c, discriminante);

% Determinación del tipo de raíces
if discriminante > 0
    fprintf('D > 0: Dos raíces reales diferentes\n');
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
elseif discriminante == 0
    fprintf('D = 0: Una raíz real doble\n');
    x1 = -b/(2*a);
    x2 = x1;
else
    fprintf('D < 0: Dos raíces complejas conjugadas\n');
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    x1 = complex(realPart, imagPart);
    x2 = complex(realPart, -imagPart);
end

% Mostrar resultados
fprintf('\nPASO 2: Cálculo de raíces\n');
fprintf('Raíces encontradas:\n');
if discriminante >= 0
    fprintf('x₁ = %.4f\nx₂ = %.4f\n', x1, x2);
else
    fprintf('x₁ = %.4f + %.4fi\nx₂ = %.4f - %.4fi\n', real(x1), imag(x1), real(x2), imag(x2));
end

% Gráfico de la función (opcional para visualización)
f = @(x) a*x.^2 + b*x + c;
x = linspace(min(-10, real(x1)-2), max(10, real(x2)+2), 400);
y = f(x);
plot(x, y, 'LineWidth', 2);
grid on;
hold on;
scatter([real(x1), real(x2)], [0, 0], 100, 'r', 'filled');
title('Gráfico de la función cuadrática');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'Raíces', 'Location', 'best');
hold off;