% Este programa genera y grafica las funciones seno y coseno en un rango de 0 a 2π.
% Calcula y muestra amplitudes máximas, frecuencias y diferencias de fase.

clear all;
clc;

% Parámetros de configuración
frecuencia = 1;          % Frecuencia en Hz
amplitud_seno = 1.5;     % Amplitud de la función seno
amplitud_coseno = 1.0;   % Amplitud de la función coseno
fase = pi/4;             % Desfase para el coseno

% Generación de datos
t = linspace(0, 3*pi, 1000);                 % Vector tiempo
y_seno = amplitud_seno * sin(2*pi*frecuencia*t);       % Función seno
y_coseno = amplitud_coseno * cos(2*pi*frecuencia*t + fase); % Función coseno desfasada

% Cálculo de características
[max_seno, idx_seno] = max(y_seno);
[max_coseno, idx_coseno] = max(y_coseno);
diferencia_fase = fase/(2*pi*frecuencia);

% Visualización gráfica
figure('Name','Análisis de Funciones Trigonométricas');
plot(t, y_seno, 'b-', 'LineWidth', 1.5);
hold on;
plot(t, y_coseno, 'r--', 'LineWidth', 1.5);
hold off;

% Configuración del gráfico
title(['Funciones Seno y Coseno (Frecuencia: ' num2str(frecuencia) ' Hz)']);
xlabel('Tiempo (s)');
ylabel('Amplitud');
legend({'Seno', ['Coseno (\phi = ' num2str(fase) ' rad)']}, 'Location', 'northeast');
grid on;
xlim([0, 3*pi]);
xticks(0:pi/2:3*pi);
xticklabels({'0','π/2','π','3π/2','2π','5π/2','3π'});

% Mostrar resultados numéricos en consola
disp('=== Análisis de las funciones ===');
disp(['Amplitud máxima seno: ' num2str(max_seno)]);
disp(['Amplitud máxima coseno: ' num2str(max_coseno)]);
disp(['Diferencia de fase temporal: ' num2str(diferencia_fase) ' segundos']);