% Name: PlotFunctionAndDerivative
% Este programa grafica una función polinómica y su derivada en el mismo gráfico,
% permitiendo visualizar la relación entre la función y su tasa de cambio.

% Definir el dominio de la función
x = linspace(-2, 4, 100);  % Rango de x desde -2 hasta 4 con 100 puntos

% Definir la función polinómica f(x) = x^3 - 3x^2 + 2
f = x.^3 - 3*x.^2 + 2;

% Calcular la derivada f'(x) = 3x^2 - 6x
df = 3*x.^2 - 6*x;

% Configurar el gráfico
figure;
hold on;  % Permite superponer gráficos
grid on;  % Activar cuadrícula
title('Función Polinómica y su Derivada');
xlabel('Eje x');
ylabel('Eje y');
legend('show');

% Graficar la función original en azul
plot(x, f, 'b', 'LineWidth', 2, 'DisplayName', 'f(x) = x³ - 3x² + 2');

% Graficar la derivada en rojo
plot(x, df, 'r', 'LineWidth', 2, 'DisplayName', "f'(x) = 3x² - 6x");

hold off;  % Desactivar superposición de gráficos