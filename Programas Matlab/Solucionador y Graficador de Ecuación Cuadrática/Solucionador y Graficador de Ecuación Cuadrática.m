% Solicitar coeficientes de la ecuación cuadrática (ax^2 + bx + c = 0)
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular el discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces según el discriminante
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n Raíz 1 = %.2f\n Raíz 2 = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n Raíz = %.2f\n', raiz);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas:\n Raíz 1 = %.2f + %.2fi\n Raíz 2 = %.2f - %.2fi\n', parte_real, parte_imag, parte_real, parte_imag);
end

% Generar datos para la gráfica
x_vertice = -b/(2*a); % Coordenada x del vértice
x = linspace(x_vertice - 10, x_vertice + 10, 400); % Rango centrado en el vértice
y = a*x.^2 + b*x + c;

% Graficar la función cuadrática y raíces reales
figure;
plot(x, y, 'LineWidth', 1.5, 'DisplayName', 'Función cuadrática');
hold on;
if discriminante >= 0
    plot(raiz1, 0, 'r*', 'MarkerSize', 10, 'DisplayName', 'Raíz real');
    plot(raiz2, 0, 'r*', 'MarkerSize', 10);
end
title('Gráfica de la función cuadrática');
xlabel('x');
ylabel('f(x)');
grid on;
legend show;
hold off;