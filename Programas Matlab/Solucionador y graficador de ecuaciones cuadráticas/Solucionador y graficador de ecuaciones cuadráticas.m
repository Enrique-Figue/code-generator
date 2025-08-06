% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% calcula sus raíces y grafica la función correspondiente, mostrando características importantes.

clc;
clear all;
close all;

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular determinante
discriminante = b^2 - 4*a*c;

% Calcular y mostrar raíces
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
else
    if discriminante > 0
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales:\n %.4f\n %.4f\n', raiz1, raiz2);
    elseif discriminante == 0
        raiz = -b/(2*a);
        fprintf('Una raíz real doble:\n %.4f\n', raiz);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(abs(discriminante))/(2*a);
        fprintf('Raíces complejas:\n %.2f + %.2fi\n %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
end

% Crear vector x para graficar
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

% Graficar la función cuadrática
figure;
plot(x, y, 'b', 'LineWidth', 2);
grid on;
hold on;

% Marcar vértice y raíces si existen
vertice_x = -b/(2*a);
vertice_y = a*(vertice_x)^2 + b*vertice_x + c;
plot(vertice_x, vertice_y, 'ro', 'MarkerSize', 8);

if discriminante >= 0 && a ~= 0
    plot([raiz1, raiz2], [0, 0], 'k*', 'MarkerSize', 8);
end

title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x');
ylabel('f(x)');
legend('Función', 'Vértice', 'Raíces');
axis tight;