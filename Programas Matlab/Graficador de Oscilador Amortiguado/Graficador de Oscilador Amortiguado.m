% Descripción: Simula y grafica el movimiento de un oscilador armónico amortiguado
% Parámetros ajustables: masa, constante de amortiguación, constante del resorte
% Salida: Gráfico de posición vs tiempo con curva de decaimiento exponencial

clear; clc; close all;

% Parámetros del sistema (modificables)
m = 2;         % Masa (kg)
b = 5;         % Coeficiente de amortiguación (N·s/m)
k = 10;        % Constante del resorte (N/m)

% Condiciones iniciales
x0 = 0.5;      % Posición inicial (m)
v0 = 0;        % Velocidad inicial (m/s)

% Cálculos derivados
omega0 = sqrt(k/m);     % Frecuencia natural
zeta = b/(2*sqrt(m*k)); % Factor de amortiguación

% Verificar amortiguación subcrítica
if zeta >= 1
    error('Sistema sobreamortiguado o críticamente amortiguado (ζ >= 1)');
end

% Tiempo de simulación
t = linspace(0, 10, 1000); % Vector tiempo de 0 a 10 segundos

% Solución analítica para amortiguación subcrítica
omega = omega0*sqrt(1 - zeta^2);
A = sqrt((v0 + zeta*omega0*x0)^2 + (x0*omega)^2)/omega;
phi = atan((x0*omega)/(v0 + zeta*omega0*x0));
x = A*exp(-zeta*omega0*t).*sin(omega*t + phi);

% Crear figura
figure('Color', 'white');
plot(t, x, 'b', 'LineWidth', 1.5);
hold on;
plot(t, A*exp(-zeta*omega0*t), 'r--', t, -A*exp(-zeta*omega0*t), 'r--');
hold off;

% Personalizar gráfico
title('Oscilador Armónico Amortiguado');
xlabel('Tiempo (s)');
ylabel('Posición (m)');
legend('Desplazamiento', 'Envolvente exponencial', 'Location', 'best');
grid on;
axis tight;