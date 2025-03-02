% Este programa grafica una función matemática y su derivada en el mismo eje,
% ayudando a visualizar la relación entre una función y su tasa de cambio.

clear all;      % Limpiar espacio de trabajo
close all;      % Cerrar todas las figuras anteriores

syms x;         % Definir variable simbólica
f(x) = x^3 - 3*x + 2;  % Función a analizar
df(x) = diff(f, x);     % Calcular derivada simbólica

x_vals = linspace(-3, 3, 100);  % Generar 100 puntos entre -3 y 3
f_vals = double(f(x_vals));     % Evaluar función en los puntos
df_vals = double(df(x_vals));   % Evaluar derivada en los puntos

figure;
plot(x_vals, f_vals, 'LineWidth', 2, 'DisplayName', 'f(x) = x^3 - 3x + 2'); % Graficar función
hold on;
plot(x_vals, df_vals, '--', 'LineWidth', 2, 'DisplayName', 'f''(x) = 3x^2 - 3'); % Graficar derivada
hold off;

title('Función y su Derivada');
xlabel('x');
ylabel('f(x) / f''(x)');
legend('show', 'Location','best');  % Mostrar leyenda en posición óptima
grid on;                            % Activar cuadrícula
axis tight;                         % Ajustar ejes al rango de datos