% Este programa genera una función matemática y su derivada numérica, 
% y las grafica en una figura para visualizar su comportamiento.

% Configurar parámetros iniciales
t = linspace(0, 2*pi, 100);  % Vector de tiempo de 0 a 2π
dt = t(2) - t(1);            % Calcular paso temporal

% Definir la función (ejemplo: función compuesta sinusoidal)
y = sin(t) + 0.5*cos(2*t);   % Función original

% Calcular derivada numérica usando diferencias finitas
dy = diff(y) / dt;           % Derivada aproximada
t_deriv = t(1:end-1) + dt/2; % Ajustar vector temporal para la derivada

% Configurar figura
figure;
hold on;
grid on;

% Graficar función original
plot(t, y, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Función: sin(t) + 0.5cos(2t)');

% Graficar derivada
plot(t_deriv, dy, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Derivada numérica');

% Añadir etiquetas y leyenda
title('Función y su Derivada');
xlabel('Tiempo (t)');
ylabel('Amplitud');
legend('show', 'Location', 'northeast');
hold off;