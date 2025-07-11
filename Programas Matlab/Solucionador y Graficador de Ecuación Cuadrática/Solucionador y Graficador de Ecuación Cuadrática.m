clear;
clc;

disp('Programa para resolver ecuación cuadrática: ax² + bx + c = 0');
disp('Ingrese los coeficientes a, b, c:');

% Validar entrada de 'a' no nulo
a = 0;
while a == 0
    a = input('a (no cero): ');
    if a == 0
        disp('a no puede ser cero. Ingrese de nuevo.');
    end
end

b = input('b: ');
c = input('c: ');

% Calcular discriminante
D = b^2 - 4*a*c;

% Determinar tipo de raíces
if D > 0
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
    disp('Raíces reales y distintas:');
    fprintf('x1 = %.2f\nx2 = %.2f\n', x1, x2);
elseif D == 0
    x1 = -b/(2*a);
    disp('Raíz real repetida:');
    fprintf('x = %.2f\n', x1);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-D)/(2*a);
    disp('Raíces complejas conjugadas:');
    fprintf('x1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Graficar la función cuadrática
vx = -b/(2*a);         % Coordenada x del vértice
vy = a*vx^2 + b*vx + c;% Coordenada y del vértice
x = linspace(vx-10, vx+10, 1000);
y = a*x.^2 + b*x + c;

figure;
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;
plot(vx, vy, 'ro', 'MarkerSize', 8, 'LineWidth', 2); % Marcar vértice

% Marcar raíces reales si existen
if D >= 0
    plot(x1, 0, 'go', 'MarkerSize', 8, 'LineWidth', 2);
    if D > 0
        plot(x2, 0, 'go', 'MarkerSize', 8, 'LineWidth', 2);
        legend('f(x)', 'Vértice', 'Raíces');
    else
        legend('f(x)', 'Vértice', 'Raíz');
    end
else
    legend('f(x)', 'Vértice');
end

grid on;
xlabel('x');
ylabel('f(x)');
title('Gráfica de la Ecuación Cuadrática');
hold off;