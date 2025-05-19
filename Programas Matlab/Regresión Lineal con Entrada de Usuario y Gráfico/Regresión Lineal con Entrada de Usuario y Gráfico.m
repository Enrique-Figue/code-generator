% Programa interactivo para realizar regresión lineal y graficar resultados

clc;
close all;

% Obtener datos del usuario mediante cuadros de diálogo
prompt = {'Valores de X (ej: [1 2 3 4 5])', 'Valores de Y (ej: [2 4 5 4 5])'};
dlgtitle = 'Datos para Regresión Lineal';
dims = [1 50];
default = {'[1 2 3 4 5]', '[2 4 5 4 5]'};
respuestas = inputdlg(prompt, dlgtitle, dims, default);

% Convertir entradas a vectores numéricos
x = str2num(respuestas{1});
y = str2num(respuestas{2});

% Validar tamaños de los vectores
if numel(x) ~= numel(y) || isempty(x)
    errordlg('Error: Los vectores deben tener el mismo tamaño y ser válidos');
    return;
end

% Calcular coeficientes de regresión
n = length(x);
sum_x = sum(x);
sum_y = sum(y);
sum_x2 = sum(x.^2);
sum_xy = sum(x.*y);

m = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x^2); % Pendiente
b = (sum_y - m * sum_x)/n; % Intercepto

% Generar línea de regresión
y_fit = m * x + b;

% Calcular coeficiente de determinación R²
ss_res = sum((y - y_fit).^2);
ss_tot = sum((y - mean(y)).^2);
r2 = 1 - (ss_res / ss_tot);

% Crear gráfico
figure;
plot(x, y, 'ro', 'MarkerFaceColor', 'r'); % Datos originales
hold on;
plot(x, y_fit, 'b-', 'LineWidth', 2); % Línea de regresión
hold off;

% Configurar gráfico
title(['Regresión Lineal: y = ' num2str(m, '%.3f') 'x + ' num2str(b, '%.3f')]);
xlabel('Variable X');
ylabel('Variable Y');
legend('Datos originales', ['Ajuste lineal (R²=' num2str(r2, '%.3f') ')'], 'Location', 'best');
grid on;

% Mostrar resultados en consola
fprintf('Ecuación de regresión: y = %.3fx + %.3f\n', m, b);
fprintf('Coeficiente de determinación (R²): %.3f\n', r2);