% Descripción: Resuelve dy/dt = -k*y analítica y numéricamente, comparando métodos de Euler y ODE45
% Parámetros: k (constante), y0 (valor inicial), tspan (intervalo de tiempo)
clear; clc;

k = 1.5;                 % Constante de decaimiento
y0 = 10;                 % Condición inicial
tspan = [0, 3];          % Intervalo de tiempo
t = linspace(tspan(1), tspan(2), 100); % Vector tiempo

% Solución analítica
y_analitica = y0 * exp(-k * t);

% Método de Euler (numérico básico)
dt = t(2) - t(1);        % Paso temporal
y_euler = zeros(size(t));
y_euler(1) = y0;
for n = 1:length(t)-1
    y_euler(n+1) = y_euler(n) - k * y_euler(n) * dt;
end

% Solución con ODE45 (numérico avanzado)
[t_ode45, y_ode45] = ode45(@(t,y) -k*y, t, y0);

% Visualización comparativa
figure;
plot(t, y_analitica, 'b-', 'LineWidth', 2, 'DisplayName', 'Solución Analítica');
hold on;
plot(t, y_euler, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Método de Euler');
plot(t_ode45, y_ode45, 'g:', 'LineWidth', 1.5, 'DisplayName', 'ODE45');
hold off;
xlabel('Tiempo (s)');
ylabel('y(t)');
title('Comparación de métodos de solución para dy/dt = -ky');
legend('Location', 'northeast');
grid on;