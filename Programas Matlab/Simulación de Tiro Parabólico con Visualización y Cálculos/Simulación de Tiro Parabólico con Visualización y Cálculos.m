% Este programa simula el tiro parabólico de un proyectil, calcula su alcance,
% altura máxima y tiempo de vuelo, y grafica la trayectoria.

clear all; clc;  % Limpiar espacio de trabajo y pantalla

% Parámetros iniciales (entrada de usuario)
vo = input('Ingrese velocidad inicial (m/s): ');       % Velocidad inicial
theta = input('Ingrese ángulo de lanzamiento (grados): '); % Ángulo en grados
g = 9.81;  % Aceleración gravitacional [m/s²]

% Conversión a radianes y descomposición de velocidad
theta_rad = deg2rad(theta);           % Conversión a radianes
vxo = vo * cos(theta_rad);            % Componente horizontal de velocidad
vyo = vo * sin(theta_rad);            % Componente vertical de velocidad

% Cálculos teóricos
t_vuelo = 2 * vyo / g;                % Tiempo total de vuelo
alcance = vxo * t_vuelo;              % Alcance horizontal máximo
altura_max = (vyo^2)/(2*g);           % Altura máxima alcanzada

% Generación de vector temporal y trayectoria
t = linspace(0, t_vuelo, 100);        % 100 puntos entre 0 y t_vuelo
x = vxo * t;                          % Posiciones horizontales
y = vyo * t - 0.5 * g * t.^2;         % Posiciones verticales

% Visualización gráfica
figure('Color','white','Name','Simulador Tiro Parabólico')
plot(x, y, 'b-', 'LineWidth', 2)      % Graficar trayectoria
hold on; grid on;
plot([0 alcance], [0 0], 'k--')       % Línea de alcance
plot([0 0], [0 altura_max], 'r--')    % Línea de altura máxima
title(['Tiro Parabólico: v₀ = ' num2str(vo) ' m/s, θ = ' num2str(theta) '°'])
xlabel('Distancia Horizontal (m)')
ylabel('Altura (m)')
legend('Trayectoria', 'Alcance', 'Altura Máx', 'Location','NorthEast')

% Mostrar resultados en gráfico
text(alcance/3, altura_max/2, sprintf('Alcance: %.2f m\nAltura Máx: %.2f m\nTiempo Vuelo: %.2f s',...
     alcance, altura_max, t_vuelo), 'BackgroundColor','white')
axis equal;  % Mantener proporción de ejes