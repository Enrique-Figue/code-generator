% Descripción: Resuelve la ecuación dy/dt = -k*y usando el método de Euler,
% compara con la solución analítica y calcula el error cuadrático medio.

% Solicitar parámetros al usuario
y0 = input('Ingrese el valor inicial y0: ');
k = input('Ingrese la constante de decaimiento k: ');
h = input('Ingrese el paso de tiempo h: ');
T = input('Ingrese el tiempo final T: ');

% Calcular número de pasos
N = floor(T/h) + 1;

% Inicializar vectores
t = zeros(1, N);
y_euler = zeros(1, N);
y_analitica = zeros(1, N);

% Condiciones iniciales
t(1) = 0;
y_euler(1) = y0;
y_analitica(1) = y0;

% Método de Euler
for i = 1:N-1
    y_euler(i+1) = y_euler(i) + h*(-k*y_euler(i));
    t(i+1) = t(i) + h;
    y_analitica(i+1) = y0*exp(-k*t(i+1)); % Solución analítica
end

% Calcular error cuadrático medio
error = mean((y_euler - y_analitica).^2);

% Graficar resultados
figure;
plot(t, y_euler, 'b--o', 'DisplayName', 'Método de Euler');
hold on;
plot(t, y_analitica, 'r-', 'DisplayName', 'Solución Analítica');
hold off;
xlabel('Tiempo');
ylabel('y(t)');
title('Comparación de Soluciones');
legend('Location', 'best');
grid on;

% Mostrar error en la figura
text(T/2, y0*0.5, sprintf('Error Cuadrático Medio: %.2e', error), ...
    'FontSize', 10, 'HorizontalAlignment', 'center');

% Mostrar resultados en consola
fprintf('\nResultados:\n');
fprintf('Tiempo final simulado: %.2f\n', t(end));
fprintf('Valor numérico en t=%.2f: %.4f\n', T, y_euler(end));
fprintf('Valor analítico en t=%.2f: %.4f\n', T, y_analitica(end));
fprintf('Error cuadrático medio: %.2e\n', error);