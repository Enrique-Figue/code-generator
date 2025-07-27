clc; clear; close all;

% Puntos de muestra (x, sin(x)) equidistantes en [0, 2π]
x_muestras = linspace(0, 2*pi, 5);
y_muestras = sin(x_muestras);

% Parámetros de interpolación
n = length(x_muestras);
x_interp = linspace(0, 2*pi, 100);  % Puntos para evaluación
y_interp = zeros(size(x_interp));   % Almacenar resultados

% Calcular polinomio interpolante de Lagrange
for i = 1:length(x_interp)
    suma = 0;
    for j = 1:n
        termino = y_muestras(j);
        for k = 1:n
            if k ~= j
                termino = termino * (x_interp(i) - x_muestras(k)) / (x_muestras(j) - x_muestras(k));
            end
        end
        suma = suma + termino;
    end
    y_interp(i) = suma;
end

% Graficar resultados comparativos
figure;
plot(x_muestras, y_muestras, 'ro', 'MarkerSize', 8, 'LineWidth', 2); hold on;
plot(x_interp, y_interp, 'b-', 'LineWidth', 1.5);
plot(x_interp, sin(x_interp), 'k--', 'LineWidth', 1.2); hold off;

% Configuración del gráfico
title('Interpolación de Lagrange vs Función Real');
xlabel('x'); ylabel('y');
legend('Puntos muestrales', 'Polinomio interpolante', 'Función sen(x) real', 'Location', 'SouthEast');
grid on; axis tight;
set(gca, 'FontSize', 10);

% Mostrar error cuadrático medio
error = mean((y_interp - sin(x_interp)).^2);
fprintf('Error cuadrático medio: %.4f\n', error);