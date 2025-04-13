clear all; close all; clc;  % Limpia entorno de trabajo

% Entrada de parámetros por usuario
f1 = input('Frecuencia de la primera onda (Hz): ');
A1 = input('Amplitud de la primera onda: ');
f2 = input('Frecuencia de la segunda onda (Hz): ');
A2 = input('Amplitud de la segunda onda: ');

% Configurar dominio temporal
t = linspace(0, 2, 2000);  % Vector tiempo de 0 a 2 segundos

% Calcular componentes de onda
onda1 = A1 * sin(2*pi*f1*t);
onda2 = A2 * cos(2*pi*f2*t);  % Usamos coseno para variedad
resultante = onda1 + onda2;    % Superposición lineal

% Visualización de resultados
figure('Color','white','Name','Simulador de Ondas');
plot(t, onda1, 'c:', 'LineWidth', 1.2);  % Componente senoidal
hold on;
plot(t, onda2, 'm--', 'LineWidth', 1.2); % Componente cosenoidal
plot(t, resultante, 'k-', 'LineWidth', 2); % Señal resultante
grid on; box off;

% Personalización del gráfico
title(['Interferencia: ' num2str(f1) 'Hz + ' num2str(f2) 'Hz']);
xlabel('Tiempo (segundos)'); 
ylabel('Amplitud');
legend({'Senoidal','Cosenoidal','Resultante'}, 'FontSize', 8);
set(gca, 'GridAlpha', 0.3);  % Hacer la cuadrícula más sutil

% Anotación educativa
annotation('textbox', [0.15, 0.75, 0.2, 0.1], 'String', ...
    ['Principio de Superposición:\nA·sin(ωt) + B·cos(ωt)'], ...
    'EdgeColor','none','FontSize',9,'BackgroundColor','none');