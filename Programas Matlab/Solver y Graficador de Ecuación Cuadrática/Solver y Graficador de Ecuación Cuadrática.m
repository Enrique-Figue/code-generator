% Descripción: Resuelve una ecuación cuadrática y grafica la función resultante
%              Incluye comprobación de raíces complejas y puntos destacados

clc;
clear;

% Solicitar coeficientes al usuario
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif discriminante == 0
    x1 = -b/(2*a);
    disp(['Raíz doble: x = ', num2str(x1)]);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    disp(['Raíces complejas: x1 = ', num2str(parte_real), ' + ', num2str(parte_imag), 'i, x2 = ', num2str(parte_real), ' - ', num2str(parte_imag), 'i']);
end

% Generar datos para la gráfica
x_vertice = -b/(2*a);  % Coordenada x del vértice
x = linspace(x_vertice-5, x_vertice+5, 400);
y = a*x.^2 + b*x + c;

% Graficar función
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;
title(['Función Cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x');
ylabel('f(x)');

% Marcar raíces reales si existen
if discriminante >= 0
    plot(x1, 0, 'r*', 'MarkerSize', 10);
    if discriminante > 0
        plot(x2, 0, 'r*', 'MarkerSize', 10);
    end
    legend('Función', 'Raíces', 'Location', 'best');
else
    legend('Función', 'Location', 'best');
end

% Marcar vértice
plot(x_vertice, a*x_vertice^2 + b*x_vertice + c, 'go', 'MarkerSize', 8, 'LineWidth', 2);
disp('Gráfica generada con vértice marcado en verde');