clc; clear; close all;

% Definir la funcion y su derivada
f = @(x) x.^2 - 2;  % Funcion a resolver: f(x) = 0
df = @(x) 2*x;       % Derivada de f(x)

% Parametros del metodo
x0 = 1;          % Estimacion inicial
tol = 1e-6;      % Tolerancia para convergencia
max_iter = 100;  % Numero maximo de iteraciones

% Inicializar variables
x_current = x0;
iter_history = x0;  % Almacena el historial de aproximaciones

% Iteracion de Newton-Raphson
for iter = 1:max_iter
    f_val = f(x_current);
    if abs(f_val) < tol  % Verificar convergencia
        break;
    end
    df_val = df(x_current);
    if df_val == 0
        error('La derivada es cero. No se puede continuar.');  % Evitar division por cero
    end
    x_next = x_current - f_val / df_val;  % Actualizar aproximacion
    iter_history = [iter_history; x_next];  % Guardar nueva aproximacion
    x_current = x_next;
end

% Mostrar resultados
if iter < max_iter
    fprintf('Raíz encontrada: %.6f en %d iteraciones.\n', x_current, iter);
else
    fprintf('No se alcanzó la convergencia en %d iteraciones.\n', max_iter);
end

% Graficar funcion e iteraciones
x_vals = linspace(min(iter_history)-1, max(iter_history)+1, 1000);
y_vals = f(x_vals);

figure;
plot(x_vals, y_vals, 'b-', 'LineWidth', 2);  % Graficar la funcion
hold on;
plot(iter_history, f(iter_history), 'ro-', 'LineWidth', 1.5, 'MarkerSize', 8);  % Graficar iteraciones
xlabel('x');
ylabel('f(x)');
title('Convergencia del Método Newton-Raphson');
legend('f(x) = x^2 - 2', 'Iteraciones', 'Location', 'Best');
grid on;