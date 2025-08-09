clc; clear; close all;

% Descripción: Este programa calcula y grafica la trayectoria de un proyectil
% dados la velocidad inicial y el ángulo de lanzamiento, además de mostrar
% tiempo de vuelo, altura máxima y alcance horizontal.

% Solicitar valores de entrada al usuario
v0 = input('Ingrese la velocidad inicial (m/s): ');
theta = input('Ingrese el ángulo de lanzamiento (grados): ');

% Validar entradas
if v0 <= 0
    error('La velocidad inicial debe ser positiva.');
end
if theta < 0 || theta > 90
    error('El ángulo debe estar entre 0 y 90 grados.');
end

% Constantes físicas
g = 9.81; % Aceleración gravitacional (m/s²)

% Cálculos fundamentales
t_vuelo = (2 * v0 * sind(theta)) / g; % Tiempo de vuelo
altura_max = (v0^2 * sind(theta)^2) / (2 * g); % Altura máxima
alcance = (v0^2 * sind(2*theta)) / g; % Alcance horizontal

% Generar vector de tiempo y trayectoria
t = 0:0.01:t_vuelo; % Intervalos de 0.01 segundos
x = v0 * cosd(theta) * t; % Posiciones horizontales
y = v0 * sind(theta) * t - 0.5 * g * t.^2; % Posiciones verticales
y(y < 0) = 0; % Asegurar que la altura no sea negativa

% Graficar trayectoria
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Distancia Horizontal (m)');
ylabel('Altura (m)');
title('Trayectoria de un Proyectil');
legend(sprintf('v₀ = %.1f m/s, θ = %.1f°', v0, theta));

% Mostrar resultados en consola
fprintf('\nResultados del Simulador:\n');
fprintf(' - Tiempo de vuelo: %.2f segundos\n', t_vuelo);
fprintf(' - Altura máxima: %.2f metros\n', altura_max);
fprintf(' - Alcance horizontal: %.2f metros\n', alcance);