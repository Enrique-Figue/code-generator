% Descripción: Resuelve y grafica la ecuación logística para modelar crecimiento poblacional, incluyendo comparación con soluciones analíticas y documentación detallada.
% Uso: Ejecutar el script. Los parámetros pueden modificarse en la sección "Parámetros del modelo".

%% Documentación:
% Este programa:
% 1. Demuestra numéricamente el modelo logístico de crecimiento poblacional
% 2. Compara la solución numérica con la solución analítica exacta
% 3. Incluye visualización profesional de resultados
% 4. Muestra uso básico de ODE solvers en MATLAB
% 5. Parámetros editables para experimentación educativa

%% Parámetros del modelo (editables)
r = 0.3;          % Tasa de crecimiento intrínseca [1/unidad_tiempo]
K = 500;          % Capacidad de carga [individuos]
P0 = 10;          % Población inicial [individuos]
tspan = [0 20];   % Intervalo de tiempo [tiempo_inicial, tiempo_final]

%% Resolución numérica usando ode45
logistic_ode = @(t,P) r*P.*(1 - P/K);  % Definición de la EDO
[t_num, P_num] = ode45(logistic_ode, tspan, P0);

%% Solución analítica exacta
t_ana = linspace(tspan(1), tspan(2), 1000)';
P_ana = K./(1 + (K/P0 - 1)*exp(-r*t_ana));

%% Visualización
figure('Color','white','Name','Modelo Logístico')
plot(t_num, P_num, 'bo', 'DisplayName','Solución Numérica (ode45)')
hold on
plot(t_ana, P_ana, 'r-', 'LineWidth', 1.5, 'DisplayName','Solución Analítica')
hold off

% Configuración de gráfica
title(['Crecimiento Logístico: r = ', num2str(r), ', K = ', num2str(K)])
xlabel('Tiempo')
ylabel('Población')
legend('Location','southeast')
grid on
set(gca, 'FontSize', 10)
xlim(tspan)
ylim([0 K*1.1])

%% Información adicional en Command Window
fprintf('\nModelo Logístico - Resultados clave:\n')
fprintf(' - Población inicial: %d individuos\n', P0)
fprintf(' - Población en t=%d: %.2f (num) vs %.2f (ana)\n', ...
    tspan(end), P_num(end), P_ana(end))
fprintf(' - Error relativo final: %.4f%%\n', ...
    abs(P_num(end)-P_ana(end))/P_ana(end)*100)