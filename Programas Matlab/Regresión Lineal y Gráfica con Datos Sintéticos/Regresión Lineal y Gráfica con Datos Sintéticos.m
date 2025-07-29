% Genera datos sintéticos, calcula una regresión lineal y grafica los resultados

% Generar datos sintéticos (x, y) con ruido aleatorio
x = 1:10';                     % Vector de características
y = 2*x + 3 + randn(10,1)*2;   % Relación lineal con ruido gaussiano

% Calcular coeficientes de regresión (theta = [intercepto; pendiente])
X = [ones(length(x),1), x];    % Matriz de diseño con término de intercepto
theta = (X'*X) \ X'*y;         % Solución de mínimos cuadrados

% Calcular valores predichos y métricas de calidad
y_pred = X*theta;              % Valores predichos por el modelo
R2 = 1 - sum((y - y_pred).^2)/sum((y - mean(y)).^2); % Coeficiente de determinación

% Generar gráfico de resultados
figure;
hold on;
scatter(x, y, 40, 'filled', 'DisplayName', 'Datos Observados'); % Graficar datos originales
plot(x, y_pred, 'LineWidth', 2, 'Color', 'r', 'DisplayName', ...
    sprintf('Ajuste: y = %.2fx + %.2f\nR² = %.3f', theta(2), theta(1), R2)); % Línea de regresión
hold off;

% Configurar aspecto del gráfico
title('Regresión Lineal con Datos Sintéticos');
xlabel('Variable Independiente (x)');
ylabel('Variable Dependiente (y)');
grid on;
legend('Location', 'northwest');
set(gca, 'FontSize', 12);