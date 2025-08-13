% Descripción: Simula la caída libre de un objeto, calcula posición y velocidad en cada instante,
%              muestra resultados en tabla y gráficas. Incluye validación de entrada y documentación.

function caida_libre
    % Presentación inicial
    clc;
    fprintf('Simulador de Caída Libre\n');
    fprintf('-----------------------\n');
    fprintf('Calcula posición y velocidad de un objeto en caída libre desde 100 metros.\n\n');
    
    % Configurar parámetros iniciales
    h0 = 100;  % Altura inicial en metros
    g = 9.81;  % Aceleración gravitacional (m/s²)
    
    % Entrada de datos con validación
    while true
        try
            t = input('Ingrese tiempo de simulación (segundos): ');
            if ~isnumeric(t) || ~isscalar(t) || t <= 0
                error('Valor inválido.');
            end
            break;
        catch
            fprintf('Error: Ingrese un número positivo.\n');
        end
    end
    
    % Cálculos vectorizados
    tiempo = 0:1:t;  % Vector tiempo en pasos de 1 segundo
    posicion = h0 - 0.5 * g * tiempo.^2;
    velocidad = g * tiempo;
    
    % Mostrar resultados en tabla
    fprintf('\nSegundo | Altura (m) | Velocidad (m/s)\n');
    fprintf('------------------------------------\n');
    for i = 1:length(tiempo)
        fprintf('%5d   | %9.2f   | %10.2f\n', tiempo(i), posicion(i), velocidad(i));
    end
    
    % Generar gráficas comparativas
    figure('Name','Simulación Caída Libre');
    
    subplot(2,1,1);
    plot(tiempo, posicion, 'b-o');
    title('Posición vs Tiempo');
    xlabel('Tiempo (s)');
    ylabel('Altura (m)');
    grid on;
    
    subplot(2,1,2);
    plot(tiempo, velocidad, 'r-*');
    title('Velocidad vs Tiempo');
    xlabel('Tiempo (s)');
    ylabel('Velocidad (m/s)');
    grid on;
    
    % Mensaje final con física
    fprintf('\nEl objeto toca el suelo en t = %.2f segundos.\n', sqrt(2*h0/g));
end