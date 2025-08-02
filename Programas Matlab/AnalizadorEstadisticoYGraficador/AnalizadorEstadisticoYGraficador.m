% Descripción: Este programa solicita al usuario una lista de números, calcula su promedio y desviación estándar,
%              y grafica los datos con líneas indicando la media y una banda de ±1 desviación estándar.

function AnalizadorEstadisticoYGraficador()
    % Solicitar datos al usuario mediante cuadro de diálogo
    entrada = inputdlg('Ingrese números separados por comas:', 'Datos de entrada', [1 50]);
    
    % Verificar si el usuario canceló la entrada
    if isempty(entrada)
        error('Entrada cancelada por el usuario');
    end
    
    try
        % Convertir entrada de texto a vector numérico
        datos = str2num(entrada{1});
        
        % Verificar que se ingresaron números válidos
        if isempty(datos)
            error('Formato de entrada inválido');
        end
        
        % Calcular estadísticas
        media = mean(datos);
        desviacion = std(datos);
        
        % Crear figura con los datos y estadísticas
        figure('Name', 'Análisis Estadístico', 'NumberTitle', 'off');
        hold on;
        
        % Graficar puntos de datos
        scatter(1:length(datos), datos, 40, 'filled', 'MarkerFaceColor', [0.2 0.4 0.8]);
        
        % Graficar línea de media
        line([0.5, length(datos)+0.5], [media, media], 'Color', 'r', 'LineWidth', 2);
        
        % Graficar bandas de desviación estándar
        line([0.5, length(datos)+0.5], [media+desviacion, media+desviacion],...
            'Color', [1 0.6 0.6], 'LineWidth', 1.5, 'LineStyle', '--');
        line([0.5, length(datos)+0.5], [media-desviacion, media-desviacion],...
            'Color', [1 0.6 0.6], 'LineWidth', 1.5, 'LineStyle', '--');
        
        % Configurar aspecto del gráfico
        xlim([0.5 length(datos)+0.5]);
        title(['Análisis de datos: μ = ', num2str(media, '%.2f'), ', σ = ', num2str(desviacion, '%.2f')]);
        xlabel('Índice de dato');
        ylabel('Valor');
        legend('Datos', 'Media', '±1σ', 'Location', 'best');
        grid on;
        hold off;
        
    catch exception
        % Mostrar errores al usuario
        errordlg(['Error: ', exception.message], 'Error en los datos');
    end
end