% Descripción: Este programa grafica la función seno y sus aproximaciones mediante
%              polinomios de Taylor de grados 1, 3 y 5 alrededor de x=0.
%              También calcula el error absoluto en x=pi/2 para cada aproximación.

% Limpiar espacio de trabajo y cerrar todas las figuras
clear; close all;

% Definir parámetros
x = linspace(-2*pi, 2*pi, 200);  % Rango de evaluación
x0 = pi/2;                       % Punto para cálculo de error
grados = [1, 3, 5];              % Grados de los polinomios de Taylor
colores = {'r', 'g', 'm'};       % Colores para cada aproximación
leyenda = {'sin(x)'};            % Inicializar leyenda

% Calcular función original
y_real = sin(x);

% Graficar función original
figure;
plot(x, y_real, 'b', 'LineWidth', 2);
hold on;
grid on;

% Calcular y graficar aproximaciones de Taylor
for i = 1:length(grados)
    n = grados(i);
    coef = zeros(1, n+1);  % Coeficientes del polinomio
    
    % Calcular coeficientes de la serie de Taylor para sin(x)
    for k = 0:floor(n/2)
        exponente = 2*k + 1;
        coef(exponente + 1) = (-1)^k / factorial(exponente);
    end
    
    % Evaluar polinomio y calcular error
    y_aprox = polyval(flip(coef), x);
    error = abs(polyval(flip(coef), x0) - sin(x0));
    
    % Graficar aproximación
    plot(x, y_aprox, '--', 'Color', colores{i}, 'LineWidth', 1.5);
    leyenda{end+1} = sprintf('Grado %d (Error: %.4f)', n, error);
end

% Configurar gráfica
title('Aproximación de sin(x) con Polinomios de Taylor');
xlabel('x'); ylabel('f(x)');
legend(leyenda, 'Location', 'northwest');
axis([-2*pi 2*pi -2 2]);
xticks(-2*pi:pi/2:2*pi);
xticklabels({'-2\pi', '-3\pi/2', '-\pi', '-\pi/2', '0', '\pi/2', '\pi', '3\pi/2', '2\pi'});
hold off;