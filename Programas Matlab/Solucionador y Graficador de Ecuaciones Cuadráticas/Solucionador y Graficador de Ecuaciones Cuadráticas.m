% Descripción: Este programa resuelve una ecuación cuadrática de la forma ax² + bx + c = 0,
%              muestra las raíces y grafica la función con las soluciones identificadas.

clc; clear; close all;

% Entrada de coeficientes
disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
a = input('Ingrese el coeficiente a: ');
while a == 0
    disp('Error: a no puede ser cero en una ecuación cuadrática.');
    a = input('Ingrese nuevamente el coeficiente a: ');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante: %.2f\n', discriminante);

% Determinación del tipo de raíces
if discriminante > 0
    disp('Existen dos raíces reales distintas.');
elseif discriminante == 0
    disp('Existe una raíz real doble.');
else
    disp('Existen dos raíces complejas conjugadas.');
end

% Cálculo de raíces
x1 = (-b + sqrt(discriminante)) / (2*a);
x2 = (-b - sqrt(discriminante)) / (2*a);
fprintf('x₁ = %s\n', num2str(x1));
fprintf('x₂ = %s\n\n', num2str(x2));

% Preparación de la gráfica
xv = -b/(2*a); % Vértice x
yv = a*xv^2 + b*xv + c; % Vértice y
x = linspace(xv-5, xv+5, 400); % Rango centrado en el vértice
y = a*x.^2 + b*x + c;

figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;

% Marcar raíces reales en la gráfica
if isreal(x1)
    plot(x1, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Raíces');
    plot(x2, 0, 'ro', 'MarkerSize', 8);
end

% Marcar vértice
plot(xv, yv, 'gs', 'MarkerSize', 8, 'DisplayName', 'Vértice');

title('Gráfica de la función cuadrática');
xlabel('x');
ylabel('f(x)');
legend('Location', 'best');
hold off;