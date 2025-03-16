% Descripción: Resuelve y' = -k*y numéricamente usando el método de Euler,
%              compara con solución analítica y calcula el error absoluto.

clc; clear; close all;

% Parámetros iniciales (entrada de usuario)
disp('=== Simulador de decaimiento exponencial ===');
k = input('Constante de decaimiento (k) [default=0.5]: ');
if isempty(k)
    k = 0.5;  % Valor por defecto si no se ingresa ningún valor
end

T = input('Tiempo final (T) [default=10]: ');
if isempty(T)
    T = 10;
end

h = input('Paso temporal (h) [default=0.1]: ');
if isempty(h)
    h = 0.1;
end

% Condiciones iniciales
t = 0:h:T;     % Vector temporal
y_euler = zeros(size(t));
y_euler(1) = 1; % y(0) = 1

% Método de Euler
for n = 1:length(t)-1
    y_euler(n+1) = y_euler(n) + h*(-k*y_euler(n));
end

% Solución analítica
y_exacta = exp(-k*t);

% Cálculo de error global
error_global = max(abs(y_exacta - y_euler));

% Visualización
figure('Color','white');
plot(t, y_exacta, 'b-', 'LineWidth', 2, 'DisplayName','Solución Exacta');
hold on;
plot(t, y_euler, 'ro--', 'MarkerSize', 4, 'DisplayName','Aproximación Euler');
title(['Comparación de Métodos (k = ', num2str(k), ', h = ', num2str(h), ')']);
xlabel('Tiempo');
ylabel('y(t)');
legend('Location','best');
grid on;

% Mostrar error en figura
dim = [0.6 0.2 0.3 0.1];
annotation('textbox',dim,'String',['Error máximo: ', num2str(error_global)],...
           'FitBoxToText','on','BackgroundColor','white');

% Mostrar resultados en consola
fprintf('\nResultados:\n');
fprintf('Tiempo final: %.2f s\n', T);
fprintf('Paso temporal: %.3f\n', h);
fprintf('Error máximo absoluto: %.6f\n', error_global);