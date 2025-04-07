% Descripción: Este programa grafica una función matemática y su integral numérica,
% permitiendo visualizar la relación entre una función y el área bajo su curva.
% También compara la integral numérica con la solución analítica para fines educativos.

clear; clc; close all; % Limpiar espacio de trabajo y cerrar figuras anteriores

% Definición de la función y parámetros
x = linspace(0, 2*pi, 100);       % Crear vector x de 0 a 2π con 100 puntos
f = @(x) sin(x);                  % Función a integrar (puede modificarse)
F_analitica = -cos(x) + 1;        % Integral analítica de sin(x) (constante ajustada para visualización)

% Calcular integral numérica acumulativa usando integral aproximada
F_numerica = zeros(size(x));
for i = 1:length(x)
    F_numerica(i) = integral(f, 0, x(i)); % Integral de 0 a x(i)
end

% Crear figura con dos subgráficos
figure('Name','Función e Integral','NumberTitle','off');

% Subgráfico 1: Función original
subplot(2,1,1);
plot(x, f(x), 'b', 'LineWidth', 1.5);
title('Función Original: f(x) = sin(x)');
xlabel('x');
ylabel('f(x)');
grid on;
legend('f(x) = sin(x)', 'Location', 'northeast');

% Subgráfico 2: Comparación de integrales
subplot(2,1,2);
hold on;
plot(x, F_analitica, 'r--', 'LineWidth', 2);   % Solución analítica
plot(x, F_numerica, 'k', 'LineWidth', 1.5);    % Solución numérica
title('Integral de f(x)');
xlabel('x');
ylabel('∫_0^x f(t) dt');
legend('Solución Analítica (-cos(x) + 1)', 'Solución Numérica', 'Location', 'southeast');
grid on;
hold off;

% Mensaje educativo en consola
fprintf(['Educativo:\n'...
         '1. La integral numérica aproxima el área bajo la curva usando métodos numéricos.\n'...
         '2. La solución analítica se obtiene mediante integración simbólica (antiderivada).\n'...
         '3. Observe cómo ambas gráficas coinciden cuando la aproximación es precisa.\n']);