clc;
clear;

% Pedir coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente "a" no puede ser cero. No es una ecuación cuadrática.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Determinar y mostrar raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Dos raíces reales: ', num2str(raiz1), ' y ', num2str(raiz2)]);
elseif discriminante == 0
    raiz = -b/(2*a);
    disp(['Raíz real doble: ', num2str(raiz)]);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    disp(['Raíces complejas: ', num2str(parte_real), ' + ', num2str(parte_imag), 'i y ', num2str(parte_real), ' - ', num2str(parte_imag), 'i']);
end

% Calcular y mostrar vértice
x_vertice = -b/(2*a);
y_vertice = a*x_vertice^2 + b*x_vertice + c;
disp(['Vértice en (', num2str(x_vertice), ', ', num2str(y_vertice), ')']);

% Generar puntos para la gráfica
x = linspace(x_vertice-5, x_vertice+5, 400);
y = a*x.^2 + b*x + c;

% Configurar gráfica
figure;
plot(x, y, 'b', 'LineWidth', 2, 'DisplayName', 'Función cuadrática');
hold on;
if discriminante >= 0
    if discriminante > 0
        plot(raiz1, 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Raíces reales');
        plot(raiz2, 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2, 'HandleVisibility', 'off');
    else
        plot(raiz, 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Raíz doble');
    end
end
plot(x_vertice, y_vertice, 'g*', 'MarkerSize', 15, 'LineWidth', 2, 'DisplayName', 'Vértice');
hold off;

% Añadir etiquetas y leyenda
grid on;
xlabel('x');
ylabel('y');
title('Gráfica de la Ecuación Cuadrática');
legend('Location', 'best');