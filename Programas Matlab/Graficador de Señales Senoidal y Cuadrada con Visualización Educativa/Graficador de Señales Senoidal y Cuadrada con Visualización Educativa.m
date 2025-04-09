% Descripción: Genera y visualiza una señal senoidal y su versión cuadrada,
%              mostrando conceptos básicos de procesamiento de señales y
%              componentes de GUI simples.

clear; clc; close all;

% Parámetros de la señal
Amplitud = 2;           % Amplitud de la señal en volts
Frecuencia = 1;         % Frecuencia en Hz
Fase = 0;               % Fase inicial en radianes
Fs = 1000;              % Frecuencia de muestreo en Hz
t = 0:1/Fs:1;           % Vector de tiempo de 1 segundo

% Generar señal senoidal
senal_senoidal = Amplitud * sin(2*pi*Frecuencia*t + Fase);

% Generar señal cuadrada (versión binarizada de la senoidal)
senal_cuadrada = Amplitud * sign(sin(2*pi*Frecuencia*t + Fase));

% Configurar figura
figure('Name','Visualizador de Señales','NumberTitle','off');
subplot(2,1,1);
plot(t, senal_senoidal, 'b');
title('Señal Senoidal');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;
legend('y(t) = A sin(2πft + φ)');
axis([0 1 -Amplitud*1.2 Amplitud*1.2]);

subplot(2,1,2);
h_plot = plot(t(1), senal_cuadrada(1), 'r');  % Inicializar plot
title('Señal Cuadrada');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;
legend('Square(sin(t)) = sign(sin(2πft + φ))');
axis([0 1 -Amplitud*1.2 Amplitud*1.2]);

% Animación para mostrar construcción de la señal
for i = 1:length(t)
    subplot(2,1,2);
    set(h_plot, 'XData', t(1:i), 'YData', senal_cuadrada(1:i));
    drawnow;
    pause(0.01);  % Controlar velocidad de animación
end

disp('¡Visualización completa! Conceptos mostrados:');
disp('1. Generación de señales básicas');
disp('2. Transformación entre dominios de tiempo');
disp('3. Técnicas de visualización en MATLAB');
disp('4. Fundamentos de animación gráfica');