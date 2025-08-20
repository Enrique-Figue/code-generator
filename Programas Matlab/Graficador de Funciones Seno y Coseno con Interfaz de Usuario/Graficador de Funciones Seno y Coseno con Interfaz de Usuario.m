% Programa interactivo que grafica funciones seno y coseno con parámetros definidos por el usuario
% Incluye validación de entrada y visualización personalizada

function graficador_funciones
    % Solicitar parámetros al usuario
    prompt = {'Valor inicial de x:', 'Valor final de x:'};
    dlgtitle = 'Rango del dominio';
    dims = [1 35];
    definput = {'0', '10'};
    respuestas = inputdlg(prompt, dlgtitle, dims, definput);
    
    % Validar entrada numérica
    if isempty(respuestas)
        error('Operación cancelada por el usuario');
    end
    
    inicio = str2double(respuestas{1});
    fin = str2double(respuestas{2});
    
    if isnan(inicio) || isnan(fin) || inicio >= fin
        errordlg('Entrada inválida: introduzca valores numéricos con inicio < fin', 'Error');
        return;
    end
    
    % Generar datos para las funciones
    x = linspace(inicio, fin, 1000);
    y1 = sin(x);
    y2 = cos(x);
    
    % Crear figura con parámetros de visualización
    figure('Name','Comparación Funciones Trigonométricas','NumberTitle','off');
    hold on;
    
    % Graficar ambas funciones
    plot(x, y1, 'r', 'LineWidth', 2, 'DisplayName', 'seno(x)');
    plot(x, y2, 'b--', 'LineWidth', 2, 'DisplayName', 'coseno(x)');
    
    % Personalizar gráfico
    title('Comparación de funciones seno y coseno');
    xlabel('Ángulo (radianes)');
    ylabel('Amplitud');
    grid on;
    legend('show', 'Location', 'northeastoutside');
    axis tight;
    
    % Añadir interacción adicional
    opcion = menu('Opciones de visualización:', 'Zoom en área', 'Mantener vista actual');
    
    if opcion == 1
        msgbox('Seleccione el área para hacer zoom con el ratón', 'Instrucción');
        rect = getrect;
        xlim([rect(1), rect(1)+rect(3)]);
        ylim([rect(2), rect(2)+rect(4)]);
    end
end