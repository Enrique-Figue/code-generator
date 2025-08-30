clc;
clear;
close all;

% Definir parámetros
x = -5:0.1:5;                     % Dominio de la función
y = x.^3 - 2*x + 5;               % Función cúbica

% Calcular derivadas
dy_num = diff(y)/0.1;             % Derivada numérica (diferencia adelantada)
x_dy = x(1:end-1);                % Ajustar dominio para derivada
dy_exact = 3*x.^2 - 2;            % Derivada exacta

% Crear figura
figure;
hold on;
grid on;
plot(x, y, 'b', 'LineWidth', 1.5, 'DisplayName', 'f(x) = x³ - 2x +5');
plot(x_dy, dy_num, '--r', 'LineWidth', 1.5, 'DisplayName', 'Derivada numérica');
plot(x, dy_exact, ':g', 'LineWidth', 1.5, 'DisplayName', 'Derivada exacta');
xlabel('x');
ylabel('Valores');
title('Función y su derivada');
legend('Location', 'northwest');

% Interacción educativa
fprintf('\nEjemplo de puntos:\n');
ejemplos = [-3, 0, 2];
for k = ejemplos
    idx = find(x == k, 1);
    fprintf('En x = %d: f(x) = %.2f, f''(x) exacta = %.2f, f''(x) numérica ≈ %.2f\n',...
            k, y(idx), dy_exact(idx), dy_num(idx));
end

fprintf('\n¡Experimenta! Escribe cualquier x en [-5,5]:\n');
x_input = input('x = ');
if x_input < -5 || x_input > 5
    disp('Error: x fuera del rango');
else
    idx = round((x_input + 5)/0.1) + 1;  % Encontrar índice aproximado
    fprintf('Resultado: f(%.2f) = %.2f, f''(%.2f) exacta = %.2f\n',...
            x_input, y(idx), x_input, 3*x_input^2 - 2);
end