% Descripción: Calcula y grafica la trayectoria de un proyectil con velocidad y ángulo inicial dados,
% mostrando alcance, altura máxima y tiempo de vuelo.

clc;
clear;
close all;

% Entrada de parámetros por usuario
v0 = input('Ingrese la velocidad inicial (m/s): ');
theta_deg = input('Ingrese el ángulo de lanzamiento (grados): ');
theta = deg2rad(theta_deg);  % Conversión a radianes

% Constantes físicas
g = 9.81;  % Aceleración gravitacional (m/s²)

% Componentes de velocidad inicial
vx = v0 * cos(theta);
vy = v0 * sin(theta);

% Cálculos de movimiento
t_vuelo = (2 * vy) / g;  % Tiempo de vuelo
alcance = vx * t_vuelo;   % Alcance horizontal máximo
altura_max = (vy^2) / (2 * g);  % Altura máxima

% Generación de trayectoria
t = linspace(0, t_vuelo, 1000);
x = vx * t;
y = vy * t - 0.5 * g * t.^2;
y(y < 0) = 0;  % Asegurar que la posición no sea negativa

% Gráfico
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
grid on;
title(['Tiro Parabólico (v₀ = ' num2str(v0) ' m/s, θ = ' num2str(theta_deg) '°)']);
xlabel('Alcance horizontal (m)');
ylabel('Altura (m)');
legend('Trayectoria', 'Location', 'northeast');

% Mostrar resultados en gráfico
text(0.05*alcance, 0.8*altura_max, sprintf('Alcance: %.2f m', alcance));
text(0.05*alcance, 0.7*altura_max, sprintf('Altura máxima: %.2f m', altura_max));
text(0.05*alcance, 0.6*altura_max, sprintf('Tiempo de vuelo: %.2f s', t_vuelo));

disp('Gráfica generada exitosamente.');