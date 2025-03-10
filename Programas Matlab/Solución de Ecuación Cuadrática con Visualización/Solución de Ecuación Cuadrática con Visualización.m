% Programa para resolver una ecuación cuadrática y graficar la función
clear; clc;

% Entrada de coeficientes
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Verificar ecuación lineal
if a == 0
    if b == 0
        if c == 0
            disp('La ecuación es 0 = 0: Tiene infinitas soluciones');
        else
            disp('Ecuación contradictoria: 0 = constante ≠ 0');
        end
    else
        x = -c/b;
        disp(['Ecuación lineal: x = ', num2str(x)]);
    end
    return;
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Calcular raíces
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    disp(['Dos raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
elseif discriminante == 0
    x = -b/(2*a);
    disp(['Raíz única: x = ', num2str(x)]);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-discriminante)/(2*a);
    disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
end

% Generar puntos para la gráfica
x_vert = -b/(2*a); % Coordenada x del vértice
x = x_vert - 5:0.1:x_vert + 5; % Rango alrededor del vértice
y = a*x.^2 + b*x + c;

% Graficar función
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
grid on;
title('Gráfica de la Función Cuadrática');
xlabel('x');
ylabel('f(x)');

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante == 0
        plot(x, zeros(size(x)), 'k--');
        plot(x_vert, 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    else
        plot([x1 x2], [0 0], 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    end
end
legend('Función cuadrática', 'Raíces reales');