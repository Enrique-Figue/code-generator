% Descripción: Realiza una regresión lineal sobre datos sintéticos y muestra resultados gráficos
% con coeficientes calculados y ecuación de ajuste.

%% Generación de datos sintéticos
n = 50;                          % Número de puntos de datos
x = linspace(0, 10, n)';         % Vector de características
ruido = 2 * randn(n, 1);         % Ruido gaussiano
y = 1.5*x + 3 + ruido;           % Datos objetivo con relación lineal

%% Modelado de regresión lineal
X = [ones(n,1), x];              % Matriz de diseño
coeficientes = (X' * X) \ (X' * y); % Ecuación normal (mínimos cuadrados)

%% Visualización de resultados
figure;
hold on;
scatter(x, y, 'filled', 'DisplayName', 'Datos observados');
plot(x, X*coeficientes, 'r-', 'LineWidth', 2, 'DisplayName', 'Ajuste lineal');
title('Regresión Lineal Simple');
xlabel('Variable independiente (x)');
ylabel('Variable dependiente (y)');
grid on;
legend('Location', 'northwest');
axis tight;
hold off;

%% Mostrar ecuación de regresión en consola
fprintf('Ecuación de regresión:\n y = %.2fx + %.2f\n', coeficientes(2), coeficientes(1));