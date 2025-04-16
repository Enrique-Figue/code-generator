% Descripcion: Resuelve la ecuacion dy/dt = -k*y usando el metodo de Euler
%              y compara con la solucion analitica para visualizar precision.
% Parametros:
%   k = Constante de decaimiento
%   t_final = Tiempo total de simulacion
%   h = Paso de tiempo
%   y0 = Condicion inicial

clear; clc; close all;

% Parametros iniciales
k = 0.5;            % Constante de decaimiento
t_final = 10;       % Tiempo de simulacion
h = 1.0;            % Paso temporal (experimentar con 0.5, 2)
y0 = 100;           % Valor inicial

% Metodo de Euler
t = 0:h:t_final;    % Vector temporal
y = zeros(size(t)); % Prealocacion
y(1) = y0;

for i = 1:length(t)-1
    y(i+1) = y(i) + (-k*y(i))*h; % Formula de Euler: y_{n+1} = y_n + h*f(t_n, y_n)
end

% Solucion analitica
t_analitico = linspace(0, t_final, 500);
y_analitico = y0 * exp(-k*t_analitico);

% Grafico comparativo
figure('Color', 'white');
plot(t_analitico, y_analitico, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Solución Analítica');
hold on;
plot(t, y, 'ro--', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Método de Euler');
hold off;

title(['Comparación de métodos (h = ' num2str(h) ')']);
xlabel('Tiempo (s)');
ylabel('y(t)');
legend('Location', 'best');
grid on;

% Info adicional en consola
fprintf('Decaimiento exponencial con Método de Euler\n');
fprintf('Constante k: %.2f\n', k);
fprintf('Error relativo final: %.2f%%\n', 100*abs(y(end)-y0*exp(-k*t_final))/y0);