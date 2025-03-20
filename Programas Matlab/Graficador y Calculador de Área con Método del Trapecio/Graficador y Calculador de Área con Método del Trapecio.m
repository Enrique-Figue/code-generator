% Descripción: Este programa calcula el área bajo una función definida por el usuario
% utilizando el método del trapecio y muestra gráficamente la aproximación.

clc;
clear;

% Solicitar función al usuario (ej: @(x) sin(x), @(x) x.^2 + 3)
func_str = input('Ingrese la función f(x) (use @(x) ...): ');
f = func_str;

% Obtener límites del intervalo
a = input('Límite inferior a: ');
b = input('Límite superior b: ');
if a > b % Asegurar a < b
    [a, b] = deal(b, a);
    fprintf('Límites intercambiados: a=%g, b=%g\n', a, b);
end

% Obtener número de trapecios
N = input('Número de trapecios N: ');
while N <= 0 % Validar entrada
    N = input('N debe ser positivo. Reingrese N: ');
end

% Calcular puntos de muestreo
x = linspace(a, b, N+1);
y = f(x);
dx = (b - a)/N;

% Método del trapecio
area = (sum(y) - (y(1) + y(end))/2) * dx;

% Gráfico principal
figure('Color','white');
x_fine = linspace(a, b, 1000);
plot(x_fine, f(x_fine), 'b-', 'LineWidth', 1.5); hold on;

% Dibujar trapecios
for i = 1:N
    px = [x(i) x(i) x(i+1) x(i+1)];
    py = [0 y(i) y(i+1) 0];
    fill(px, py, 'm', 'EdgeColor','k', 'FaceAlpha',0.2);
end

% Configuración de gráfico
title(['Aproximación del Área: ' num2str(area, '%.4f')]);
xlabel('x'); ylabel('f(x)');
legend('Función', 'Trapecios', 'Location','best');
grid on;
hold off;

% Mostrar resultado
fprintf('\nÁrea aproximada (N=%d): %.4f\n', N, area);