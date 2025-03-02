% Descripción: Genera una señal senoidal según parámetros ingresados por el usuario
% y muestra su representación en tiempo y frecuencia mediante FFT.

clc;
close all;
clear;

% Parámetros de entrada del usuario
frecuencia = input('Ingrese frecuencia de la señal [Hz]: ');
amplitud = input('Ingrese amplitud de la señal: ');
duracion = input('Ingrese duración de la señal [s]: ');
frec_muestreo = input('Ingrese frecuencia de muestreo [Hz]: ');

% Generación del vector de tiempo
t = 0:1/frec_muestreo:duracion;
muestras = length(t);

% Creación de la señal senoidal
senal = amplitud * sin(2*pi*frecuencia*t);

% Cálculo de la FFT
NFFT = 2^nextpow2(muestras); % Zero-padding para optimizar FFT
espectro = fft(senal, NFFT)/muestras;
f = frec_muestreo/2 * linspace(0,1,NFFT/2+1); % Eje de frecuencias

% Configuración de la figura
figure('Name','Análisis de señal','NumberTitle','off');
set(gcf,'Color',[1 1 1]);

% Gráfico en el dominio del tiempo
subplot(2,1,1);
plot(t,senal,'b','LineWidth',1.5);
title(['Señal en el tiempo: ',num2str(frecuencia),' Hz']);
xlabel('Tiempo [s]');
ylabel('Amplitud');
xlim([0 duracion]);
grid on;

% Gráfico en el dominio de la frecuencia
subplot(2,1,2);
stem(f, 2*abs(espectro(1:NFFT/2+1)),'r','LineWidth',1.5,'Marker','none');
title('Espectro de Frecuencia');
xlabel('Frecuencia [Hz]');
ylabel('Magnitud');
xlim([0 2*frecuencia]); % Mostrar hasta el doble de la frecuencia fundamental
grid on;

% Ajustes finales de visualización
sgtitle('Análisis de Señal Senoidal');