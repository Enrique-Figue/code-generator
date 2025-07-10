% Descripción: Calcula y grafica la trayectoria parabólica de un proyectil
%   con datos ingresados por el usuario, mostrando altura máxima,
%   alcance y tiempo de vuelo. Incluye validación de entradas.

%% Entrada de usuario
input_prompt = {'Velocidad inicial (m/s):', 'Ángulo de lanzamiento (grados):'};
input_values = inputdlg(input_prompt, 'Datos del Proyectil', [1 40]);

%% Validación y conversión de entradas
try
    v0 = str2double(input_values{1});
    theta = str2double(input_values{2}) * pi/180;  % Conversión a radianes
    
    % Verificar valores numéricos válidos
    assert(~isnan(v0) && v0 > 0, 'Error: Velocidad debe ser número positivo')
    assert(~isnan(theta) && theta > 0 && theta < pi/2, 'Error: Ángulo debe estar entre 0-90°')
    
catch exception
    errordlg(exception.message, 'Error de entrada');
    return;
end

%% Cálculos físicos
g = 9.81;  % Aceleración gravitacional [m/s²]

% Componentes de velocidad
vx = v0 * cos(theta);
vy = v0 * sin(theta);

% Tiempo de vuelo y altura máxima
t_total = 2 * vy / g;
h_max = vy^2 / (2 * g);
alcance = vx * t_total;

%% Generación de puntos para la gráfica
t = linspace(0, t_total, 100);
x = vx * t;
y = vy * t - 0.5 * g * t.^2;

%% Visualización
figure('Name','Simulador de Proyectiles','NumberTitle','off');
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(x(end/2), h_max, 'ro', 'MarkerSize', 8);  % Punto de altura máxima

% Configuración del gráfico
title('Trayectoria Parabólica del Proyectil');
xlabel('Distancia Horizontal (m)');
ylabel('Altura Vertical (m)');
grid on;
legend({'Trayectoria', ['Altura máxima: ' num2str(h_max,'%.2f') ' m']}, 'Location','northeast');

%% Mostrar resultados en consola
results = {
    'RESULTADOS:'
    ['- Tiempo total de vuelo: ' num2str(t_total,'%.2f') ' s']
    ['- Alcance máximo: ' num2str(alcance,'%.2f') ' m']
    ['- Altura máxima: ' num2str(h_max,'%.2f') ' m']
    };
disp(char(results));