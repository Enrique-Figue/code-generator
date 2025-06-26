% Genera datos sintéticos, realiza regresión lineal y visualiza resultados

% Generar datos sintéticos con ruido aleatorio
x = linspace(0, 10, 100)';         % Vector de características
y = 2*x + 3 + randn(size(x))*2;    % Valores objetivo con ruido gaussiano

% Realizar regresión lineal (y = b0 + b1*x)
X = [ones(size(x)) x];             % Matriz de diseño
coef = X\y;                        % Calcular coeficientes
y_pred = X*coef;                   % Valores predichos

% Calcular métricas de error
SSE = sum((y - y_pred).^2);        % Suma de cuadrados de los errores
SST = sum((y - mean(y)).^2);       % Suma total de cuadrados
R2 = 1 - SSE/SST;                  % Coeficiente de determinación

% Visualizar resultados
figure;
scatter(x, y, 'b', 'filled');      % Graficar datos originales
hold on;
plot(x, y_pred, 'r', 'LineWidth', 2);  % Graficar línea de regresión
title(['Regresión Lineal: y = ' num2str(coef(2), '%.2f') 'x + ' num2str(coef(1), '%.2f')]);
xlabel('Variable Independiente (x)');
ylabel('Variable Dependiente (y)');
legend('Datos Observados', 'Ajuste Lineal', 'Location', 'northwest');
text(2, max(y)-3, ['R^2 = ' num2str(R2, '%.2f')], 'FontSize', 12);
grid on;
hold off;