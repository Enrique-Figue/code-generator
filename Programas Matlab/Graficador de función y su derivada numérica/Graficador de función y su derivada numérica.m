function graficar_funcion_y_derivada()
    % Este programa grafica una función matemática y su derivada numérica
    % Permite:
    % 1. Visualizar la relación entre una función y su tasa de cambio
    % 2. Personalizar función, rango de valores y paso de cálculo
    % 3. Ejemplo educativo sobre derivación numérica
    
    % Parámetros configurables por el usuario
    funcion = @(x) sin(x);    % Función a analizar (puede modificarse)
    x_inicio = 0;            % Inicio del intervalo
    x_fin = 2*pi;            % Fin del intervalo
    h = 0.01;               % Paso para cálculo numérico
    
    % Generar datos para la función original
    x = x_inicio:h:x_fin;
    y = funcion(x);
    
    % Calcular derivada numérica usando diferencias finitas
    dy = diff(y)/h;         % Aproximación de la derivada
    x_derivada = x(1:end-1) + h/2; % Ajuste del dominio para la derivada
    
    % Configurar gráfico
    figure('Name','Función y su Derivada','NumberTitle','off');
    plot(x, y, 'b', 'LineWidth', 1.5);   % Graficar función original
    hold on;
    plot(x_derivada, dy, 'r--', 'LineWidth', 1.5); % Graficar derivada
    hold off;
    
    % Añadir elementos descriptivos
    title('Función y su Derivada Numérica');
    xlabel('Variable x');
    ylabel('Valores');
    legend({'Función Original', 'Derivada Numérica'}, 'Location', 'best');
    grid on;
    
    % Mensaje educativo en consola
    fprintf(['Educación: La derivada representa la tasa de cambio instantánea.\n'...
             'Observe cómo los máximos/mínimos de la función coinciden '...
             'con ceros de la derivada.\n']);
end