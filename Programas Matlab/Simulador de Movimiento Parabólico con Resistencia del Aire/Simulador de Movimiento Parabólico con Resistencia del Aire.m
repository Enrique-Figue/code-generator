% Descripción: Este programa simula y grafica la trayectoria de un proyectil 
% considerando la resistencia del aire, permitiendo comparar con el caso ideal.
% Parámetros ajustables: velocidad inicial, ángulo, masa, coeficiente de arrastre.
% Utiliza ode45 para resolver la ecuación diferencial y muestra resultados numéricos.

function movimiento_parabolico
    % Parámetros iniciales (modificables)
    v0 = 50;         % Velocidad inicial (m/s)
    theta = 45;      % Ángulo de lanzamiento (grados)
    m = 0.5;         % Masa del proyectil (kg)
    k = 0.1;         % Coeficiente de arrastre (kg/m)
    g = 9.81;        % Gravedad (m/s²)
    tmax = 10;       % Tiempo máximo de simulación (s)
    
    % Condiciones iniciales
    v0x = v0 * cosd(theta);
    v0y = v0 * sind(theta);
    y0 = [0; 0; v0x; v0y];  % [x, y, vx, vy]
    
    % Resolver con resistencia del aire usando ode45
    opts = odeset('Events', @eventos);
    [t, y] = ode45(@(t,y) ecuaciones(t, y, m, k, g), [0 tmax], y0, opts);
    
    % Calcular caso ideal (sin resistencia)
    t_ideal = linspace(0, max(t), 100);
    x_ideal = v0x * t_ideal;
    y_ideal = v0y * t_ideal - 0.5 * g * t_ideal.^2;
    
    % Graficar resultados
    figure('Color', 'w', 'Name', 'Simulador de Proyectil')
    plot(y(:,1), y(:,2), 'b-', 'LineWidth', 2, 'DisplayName', 'Con resistencia')
    hold on
    plot(x_ideal(y_ideal >= 0), y_ideal(y_ideal >= 0), 'r--', 'DisplayName', 'Sin resistencia')
    hold off
    xlabel('Distancia horizontal (m)')
    ylabel('Altura (m)')
    title('Comparación de trayectorias')
    legend('Location', 'northeast')
    grid on
    
    % Mostrar resultados numéricos
    fprintf('Alcance con resistencia: %.2f m\n', y(end,1))
    fprintf('Altura máxima con resistencia: %.2f m\n', max(y(:,2)))
    fprintf('Tiempo de vuelo: %.2f s\n\n', t(end))
end

function dy = ecuaciones(~, y, m, k, g)
    % Sistema de ecuaciones diferenciales
    v = sqrt(y(3)^2 + y(4)^2);  % Velocidad total
    dy = zeros(4,1);
    dy(1) = y(3);               % dx/dt
    dy(2) = y(4);               % dy/dt
    dy(3) = -(k/m) * v * y(3);  % dvx/dt
    dy(4) = -g - (k/m) * v * y(4); % dvy/dt
end

function [value, isterminal, direction] = eventos(~, y)
    % Detener integración cuando el proyectil toca el suelo
    value = y(2);     % Detecta y = 0
    isterminal = 1;   % Detener la integración
    direction = -1;   % Solo detectar bajando
end