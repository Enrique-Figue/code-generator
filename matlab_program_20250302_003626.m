% Simulación de un péndulo simple con visualización
function simple_pendulum
    % Parámetros del péndulo (masa, longitud, gravedad)
    m = 1;      % Masa [kg]
    L = 1.5;    % Longitud [m]
    g = 9.81;   % Gravedad [m/s²]
    theta0 = pi/4; % Ángulo inicial [rad]
    
    % Tiempo de simulación (0 a 10 segundos)
    tspan = [0 10];
    % Condiciones iniciales [ángulo, velocidad angular]
    init = [theta0 0];
    
    % Resolver la ecuación diferencial usando ODE45
    [t,y] = ode45(@pendulum_eq, tspan, init);
    
    % Calcular coordenadas cartesianas del péndulo
    x = L * sin(y(:,1));
    y_pos = -L * cos(y(:,1));  % Negativo porque Y apunta hacia arriba
    
    % Animación del péndulo
    figure;
    axis equal;
    xlim([-L-0.5 L+0.5]);
    ylim([-L-0.5 L+0.5]);
    title('Simulación de Péndulo Simple');
    xlabel('Posición X [m]');
    ylabel('Posición Y [m]');
    grid on;
    
    pendulum_arm = line([0 x(1)], [0 y_pos(1)], 'LineWidth', 2, 'Color', 'b');
    hold on;
    pendulum_bob = plot(x(1), y_pos(1), 'ro', 'MarkerSize', 15, 'MarkerFaceColor', 'r');
    
    % Animación actualizando la posición
    for i = 1:length(t)
        set(pendulum_arm, 'XData', [0 x(i)], 'YData', [0 y_pos(i)]);
        set(pendulum_bob, 'XData', x(i), 'YData', y_pos(i));
        drawnow;
        pause(0.02); % Controlar velocidad de la animación
    end
    
    % Definición de la ecuación diferencial del péndulo
    function dydt = pendulum_eq(~,y)
        dydt = zeros(2,1);
        dydt(1) = y(2); % Velocidad angular
        dydt(2) = -(g/L) * sin(y(1)); % Aceleración angular
    end
end