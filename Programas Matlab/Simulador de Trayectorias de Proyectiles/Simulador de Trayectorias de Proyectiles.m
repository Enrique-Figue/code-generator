% Descripción: Calcula y grafica trayectorias parabólicas para diferentes ángulos de lanzamiento
% Parámetros ajustables: Velocidad inicial, ángulos de lanzamiento y gravedad

%% Configuración inicial
clear; clc;              % Limpiar espacio de trabajo y consola
g = 9.81;               % Aceleración gravitacional (m/s²)
v0 = 30;                % Velocidad inicial (m/s)
angulos = [15, 30, 45, 60, 75]; % Ángulos de lanzamiento en grados
t_max = 2*v0/g;         % Tiempo máximo de simulación

%% Cálculo de trayectorias
figure; hold on; grid on; axis equal;
titulo = sprintf('Trayectorias de Proyectil\nv0 = %d m/s', v0);
title(titulo);
xlabel('Alcance horizontal (m)');
ylabel('Altura vertical (m)');

for theta = angulos
    theta_rad = deg2rad(theta);               % Conversión a radianes
    vx = v0 * cos(theta_rad);                 % Componente horizontal
    vy = v0 * sin(theta_rad);                 % Componente vertical
    t_total = 2*vy/g;                         % Tiempo de vuelo
    
    t = linspace(0, t_total, 100);            % Vector tiempo
    x = vx * t;                               % Ecuación posición horizontal
    y = vy * t - 0.5 * g * t.^2;              % Ecuación posición vertical
    
    plot(x(y >= 0), y(y >= 0), 'LineWidth', 1.5, 'DisplayName', sprintf('%d°', theta));
end

%% Finalizar gráfico
legend('show', 'Location', 'northeastoutside');
xlim([0 v0^2/g]) % Alcance máximo teórico para 45°
fprintf('Simulación completada. Alcance máximo: %.2f m\n', v0^2/g);