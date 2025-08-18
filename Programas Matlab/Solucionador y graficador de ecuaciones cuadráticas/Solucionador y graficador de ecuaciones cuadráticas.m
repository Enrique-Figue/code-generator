% Descripción: Resuelve una ecuación cuadrática ax² + bx + c = 0 y grafica la función

clc;
clear;

% Entrada de coeficientes
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si es una ecuación cuadrática
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n');
    fprintf('Raíz 1: %.2f\nRaíz 2: %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n');
    fprintf('Raíz: %.2f\n', raiz);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas conjugadas:\n');
    fprintf('Raíz 1: %.2f + %.2fi\n', parte_real, parte_imag);
    fprintf('Raíz 2: %.2f - %.2fi\n', parte_real, parte_imag);
end

% Crear vector x y calcular y
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

% Graficar función
figure;
plot(x, y, 'r', 'LineWidth', 1.5);
xlabel('x');
ylabel('f(x)');
title(['Gráfico de f(x) = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
grid on;
legend('f(x) = ax² + bx + c');