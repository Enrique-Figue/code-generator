% Descripción: Grafica una función matemática y su derivada en el mismo eje para visualizar su relación

syms x;                                      % Definir variable simbólica
funcion = sin(x) + x.^2/10;                  % Función a analizar
derivada = diff(funcion, x);                 % Cálculo simbólico de la derivada

figure;                                      % Crear nueva figura
hold on;                                     % Mantener gráficos superpuestos
fplot(funcion, [-2*pi, 2*pi], 'b', 'LineWidth', 2);     % Graficar función original
fplot(derivada, [-2*pi, 2*pi], 'r--', 'LineWidth', 2);  % Graficar derivada

title('Análisis de Función y Derivada');     % Configurar título
xlabel('Eje x');                             % Etiqueta eje X
ylabel('Eje y');                             % Etiqueta eje Y
legend('f(x) = sin(x) + x²/10',...           % Leyenda con formato matemático
       ['f''(x) = ' char(derivada)],...
       'Location', 'northwest');
grid on;                                     % Activar cuadrícula
hold off;                                    % Liberar figura