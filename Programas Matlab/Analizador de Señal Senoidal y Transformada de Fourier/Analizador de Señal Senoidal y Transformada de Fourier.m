% Descripción: Genera una señal senoidal, calcula su transformada de Fourier 
% y grafica ambas en una figura para visualizar dominio temporal y frecuencial.

clear; clc; close all;  % Limpiar entorno

% Parámetros de la señal
f = 5;          % Frecuencia de la senoidal (Hz)
fs = 1000;      % Frecuencia de muestreo (Hz)
t = 0:1/fs:1;   % Vector temporal de 0 a 1 segundo
A = 1;          % Amplitud de la señal

% Generar señal senoidal
y = A*sin(2*pi*f*t);

% Calcular transformada de Fourier
N = length(y);                   % Número de muestras
Y = fft(y);                      % Transformada rápida de Fourier
Y_mag = abs(Y)/N*2;              % Magnitud normalizada
f_vals = fs*(0:N-1)/N;           % Vector de frecuencias

% Configurar figura
figure('Name','Análisis de Señal','NumberTitle','off')
set(groot,'DefaultAxesFontSize',12)

% Gráfico dominio temporal
subplot(2,1,1)
plot(t, y, 'b','LineWidth',1.5)
title('Dominio Temporal');
xlabel('Tiempo (s)');
ylabel('Amplitud');
xlim([0 0.5])                    % Mostrar primeros 500 ms
grid on

% Gráfico dominio frecuencial
subplot(2,1,2)
stem(f_vals, Y_mag, 'r','Marker','none') 
title('Espectro de Frecuencia');
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
xlim([0 50])                     % Mostrar hasta 50 Hz
grid on

% Añadir línea en frecuencia fundamental
hold on
plot([f f],[0 max(Y_mag)], 'k--')
legend('Espectro','Frecuencia fundamental')