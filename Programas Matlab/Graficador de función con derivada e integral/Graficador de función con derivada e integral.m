clear; close all; clc;

% Definir parámetros iniciales
a = -3; b = 2;               % Límites de integración
x = linspace(-5,5,1000);     % Dominio de la función
f = @(x) x.^2 + 3*x + 2;     % Función a analizar

% Calcular componentes gráficos
y = f(x);                                     % Evaluación de función
dy = diff(y)./diff(x);                        % Derivada numérica
x_deriv = x(1:end-1) + (x(2)-x(1))/2;        % Ajuste de dominio para derivada
integral_val = integral(f, a, b);             % Cálculo de integral

% Configurar gráfico compuesto
figure;
plot(x, y, 'b', 'LineWidth', 2);             % Graficar función original
hold on;
plot(x_deriv, dy, 'r--', 'LineWidth', 1.5);  % Graficar derivada
area(x, y, 'FaceColor', [0.8 0.8 1], 'EdgeColor', 'none'); % Área bajo curva

% Personalizar gráfico
xlabel('x'); 
ylabel('Valor');
title(['Análisis de f(x) = x² + 3x + 2    Integral(' num2str(a) ',' num2str(b) ') = ' num2str(integral_val,'%.2f')]);
legend('Función f(x)', 'Derivada f''(x)', 'Área integral', 'Location', 'northwest');
grid on;
axis tight;
hold off;