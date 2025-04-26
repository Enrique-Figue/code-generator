% Descripción: Calcula las raíces de una ecuación cuadrática y grafica la función
% Uso: Ingresar coeficientes a, b, c cuando se solicite

clc;
clear;

% Solicitar coeficientes al usuario
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Verificar si es ecuación cuadrática
if a == 0
    error('El coeficiente "a" no puede ser cero en una ecuación cuadrática');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n Raíz 1 = %.2f\n Raíz 2 = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n Raíz = %.2f\n', raiz);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('Dos raíces complejas:\n Raíz 1 = %.2f + %.2fi\n Raíz 2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Configurar parámetros para la gráfica
x_vertice = -b/(2*a);
x = linspace(x_vertice-5, x_vertice+5, 400);
y = a*x.^2 + b*x + c;

% Graficar la función
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;
title('Gráfico de la Función Cuadrática');
xlabel('x');
ylabel('f(x)');

% Marcar vértice
plot(x_vertice, a*x_vertice^2 + b*x_vertice + c, 'ro', 'MarkerSize', 8);
text(x_vertice, a*x_vertice^2 + b*x_vertice + c, ' Vértice', 'VerticalAlignment','bottom');

% Marcar raíces reales si existen
if discriminante >= 0
    plot(raiz1, 0, 'go', 'MarkerSize', 8);
    plot(raiz2, 0, 'go', 'MarkerSize', 8);
    text(raiz1, 0, ' Raíz', 'VerticalAlignment','top');
    text(raiz2, 0, ' Raíz', 'VerticalAlignment','top');
end

hold off;