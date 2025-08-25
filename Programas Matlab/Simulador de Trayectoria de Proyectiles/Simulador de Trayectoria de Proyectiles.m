% Descripción: Calcula y grafica la trayectoria parabólica de un proyectil con velocidad y ángulo inicial dados,
% mostrando altura máxima, alcance y tiempo de vuelo. Ideal para entender cinemática básica.

function proyectil()
    % Solicitar datos de entrada
    prompt = {'Velocidad inicial (m/s):','Ángulo de lanzamiento (grados):'};
    datos = inputdlg(prompt, 'Parámetros del proyectil', [1 40]);
    
    % Convertir datos a valores numéricos
    v0 = str2double(datos{1});   % Velocidad inicial
    theta = str2double(datos{2});% Ángulo de lanzamiento
    
    % Validar entrada
    if isnan(v0) || isnan(theta) || theta <= 0 || theta >= 90
        errordlg('Entradas inválidas: velocidad debe ser numérica y ángulo entre 0-90 grados','Error');
        return;
    end
    
    % Constantes físicas
    g = 9.81;                    % Aceleración gravitatoria [m/s²]
    theta_rad = deg2rad(theta);  % Convertir ángulo a radianes
    
    % Cálculos fundamentales
    t_vuelo = (2*v0*sind(theta))/g;              % Tiempo de vuelo
    alcance = (v0^2*sind(2*theta))/g;            % Alcance horizontal
    h_max = (v0^2*(sind(theta))^2)/(2*g);        % Altura máxima
    
    % Generar puntos para la trayectoria
    t = linspace(0, t_vuelo, 100);
    x = v0*cos(theta_rad)*t;                     % Componente horizontal
    y = v0*sin(theta_rad)*t - 0.5*g*t.^2;        % Componente vertical
    
    % Crear figura con parámetros detallados
    figure('Name','Trayectoria de Proyectil','NumberTitle','off');
    plot(x, y, 'b-', 'LineWidth', 1.5);
    hold on;
    plot(alcance/2, h_max, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Marcar altura máxima
    plot(alcance, 0, 'gs', 'MarkerSize', 8, 'MarkerFaceColor', 'g');       % Marcar alcance
    
    % Configuración gráfica
    title(sprintf('Trayectoria Parabólica\nv₀ = %.1f m/s, θ = %.1f°', v0, theta));
    xlabel('Distancia horizontal (m)');
    ylabel('Altura (m)');
    legend('Trayectoria','Altura Máxima','Alcance Total', 'Location','NorthEast');
    grid on;
    axis equal;
    xlim([0 alcance*1.1]);
    
    % Mostrar resultados en pantalla
    resultados = {'','Tiempo de vuelo:','','Altura máxima:','Alcance:' ;
                  '', sprintf('%.2f s', t_vuelo),'',sprintf('%.2f m',h_max),sprintf('%.2f m',alcance)};
    msgbox(resultados, 'Resultados', 'help');
end