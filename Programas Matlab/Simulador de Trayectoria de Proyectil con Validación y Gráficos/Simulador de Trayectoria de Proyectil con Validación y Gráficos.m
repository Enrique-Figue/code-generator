% Solicitar datos de entrada al usuario
velocidad = input('Ingrese velocidad inicial (m/s): ');
angulo = input('Ingrese ángulo de lanzamiento (grados): ');

% Validar entradas
if velocidad <= 0 || angulo <= 0 || angulo >= 90
    error('Entradas no válidas: velocidad > 0 y 0 < ángulo < 90 grados')
end

% Constantes físicas
g = 9.81;  % Aceleración gravitacional [m/s²]

% Cálculos fundamentales
theta = deg2rad(angulo);
t_vuelo = (2*velocidad*sind(angulo))/g;
alcance = (velocidad^2 * sind(2*angulo))/g;
altura_max = (velocidad*sind(angulo))^2/(2*g);

% Generar vectores de trayectoria
t = linspace(0, t_vuelo, 100);
x = velocidad*cosd(angulo)*t;
y = velocidad*sind(angulo)*t - 0.5*g*t.^2;

% Visualización gráfica
figure('Color','white','Name','Simulador de Proyectil')
plot(x, y, 'b-', 'LineWidth', 2)
title(['Trayectoria para v₀ = ' num2str(velocidad) ' m/s, θ = ' num2str(angulo) '°'])
xlabel('Distancia Horizontal (m)')
ylabel('Altura (m)')
grid on
xlim([0 alcance*1.05])
ylim([0 altura_max*1.1])

% Mostrar resultados numéricos en consola
fprintf('\nRESULTADOS:\n')
fprintf('• Tiempo de vuelo: %.2f s\n', t_vuelo)
fprintf('• Altura máxima: %.2f m\n', altura_max)
fprintf('• Alcance horizontal: %.2f m\n', alcance)