clear; clc; % Limpiar espacio de trabajo y pantalla

% Solicitar datos de entrada
disp('SIMULADOR DE MOVIMIENTO PARABÓLICO');
v0 = input('Ingrese velocidad inicial (m/s): ');
theta_deg = input('Ingrese ángulo de lanzamiento (0-90 grados): ');

% Validar entradas
if v0 <= 0 || theta_deg <= 0 || theta_deg >= 90
    error('Error: Velocidad debe ser positiva y ángulo entre 0-90 grados');
end

% Constantes físicas
g = 9.81; % Aceleración gravitacional (m/s²)
theta = deg2rad(theta_deg); % Convertir ángulo a radianes

% Cálculos iniciales
v0x = v0 * cos(theta); % Componente horizontal
v0y = v0 * sin(theta); % Componente vertical

% Tiempo de vuelo y alcance máximo
t_vuelo = (2 * v0y) / g;
alcance = v0x * t_vuelo;

% Generar vector temporal y trayectoria
t = linspace(0, t_vuelo, 100);
x = v0x * t;
y = v0y * t - 0.5 * g * t.^2;

% Mostrar resultados
fprintf('\nRESULTADOS:\n');
fprintf('Altura máxima: %.2f m\n', max(y));
fprintf('Tiempo de vuelo: %.2f s\n', t_vuelo);
fprintf('Alcance máximo: %.2f m\n', alcance);

% Graficar trayectoria
figure;
plot(x, y, 'b-', 'LineWidth', 2);
title('Trayectoria del Proyectil');
xlabel('Distancia Horizontal (m)');
ylabel('Altura (m)');
grid on;
xlim([0 alcance*1.1]);