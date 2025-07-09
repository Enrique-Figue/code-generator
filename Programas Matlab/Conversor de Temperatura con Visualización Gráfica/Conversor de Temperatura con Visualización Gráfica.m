% Descripción: Convierte entre Celsius y Fahrenheit, y grafica la relación entre ambas escalas en un rango dado

function temperatura()
    % Mostrar menú de opciones
    disp('Conversión de Temperatura');
    disp('1. Celsius a Fahrenheit');
    disp('2. Fahrenheit a Celsius');
    
    % Validar entrada del usuario
    while true
        opcion = input('Seleccione una opción (1-2): ');
        if ismember(opcion, [1, 2])
            break;
        else
            disp('Opción inválida. Intente nuevamente.');
        end
    end
    
    % Obtener temperatura de entrada
    temp = input('Ingrese la temperatura a convertir: ');
    
    % Realizar conversión y mostrar resultado
    if opcion == 1
        convertido = (temp * 9/5) + 32;
        disp([num2str(temp) '°C = ' num2str(convertido) '°F']);
        titulo = 'Conversión Celsius a Fahrenheit';
    else
        convertido = (temp - 32) * 5/9;
        disp([num2str(temp) '°F = ' num2str(convertido) '°C']);
        titulo = 'Conversión Fahrenheit a Celsius';
    end
    
    % Crear gráfico de relación entre escalas
    fig = figure('Name', 'Relación de Temperaturas');
    
    % Generar datos para el gráfico
    rango = -100:100;
    if opcion == 1
        y1 = rango;
        y2 = (rango * 9/5) + 32;
        etiqueta_x = 'Celsius (°C)';
        etiqueta_y = 'Fahrenheit (°F)';
    else
        y1 = rango;
        y2 = (rango - 32) * 5/9;
        etiqueta_x = 'Fahrenheit (°F)';
        etiqueta_y = 'Celsius (°C)';
    end
    
    % Configurar y mostrar gráfico
    plot(y1, y2, 'b-', 'LineWidth', 2);
    title(titulo);
    xlabel(etiqueta_x);
    ylabel(etiqueta_y);
    grid on;
    
    % Mostrar punto de conversión
    hold on;
    if opcion == 1
        plot(temp, convertido, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    else
        plot(temp, convertido, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    end
    hold off;
    
    % Añadir leyenda
    legend('Relación lineal', 'Punto convertido', 'Location', 'best');
end