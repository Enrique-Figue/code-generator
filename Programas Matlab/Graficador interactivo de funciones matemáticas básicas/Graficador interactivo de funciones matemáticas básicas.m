% Descripción: Este programa permite al usuario seleccionar y graficar una función matemática básica
% con personalización de rango y color. Incluye manejo de errores y documentación explicativa.

function graficador_funciones
    % Mostrar menú de opciones
    disp('Seleccione una función para graficar:');
    disp('1. Seno');
    disp('2. Coseno');
    disp('3. Exponencial');
    disp('4. Parábola');
    disp('5. Valor absoluto');
    opcion = input('Ingrese el número de su elección: ');
    
    % Validar entrada
    if ~ismember(opcion, 1:5)
        error('Opción no válida. Debe seleccionar un número entre 1 y 5.');
    end
    
    % Configurar parámetros del gráfico
    fig = figure('Name','Graficador Matemático','NumberTitle','off');
    ax = axes(fig);
    hold(ax, 'on');
    grid(ax, 'on');
    
    % Personalización
    x_min = input('Ingrese valor mínimo de x (predeterminado -2π): ');
    x_max = input('Ingrese valor máximo de x (predeterminado 2π): ');
    if isempty(x_min), x_min = -2*pi; end
    if isempty(x_max), x_max = 2*pi; end
    
    colores = lines(5);  % Paleta de colores predefinida
    x = linspace(x_min, x_max, 1000);
    
    % Evaluar y graficar función seleccionada
    switch opcion
        case 1
            y = sin(x);
            titulo = 'Función Seno';
        case 2
            y = cos(x);
            titulo = 'Función Coseno';
        case 3
            y = exp(0.3*x);
            titulo = 'Función Exponencial';
        case 4
            y = x.^2;
            titulo = 'Función Parabólica';
        case 5
            y = abs(x);
            titulo = 'Función Valor Absoluto';
    end
    
    plot(ax, x, y, 'Color', colores(opcion,:), 'LineWidth', 2);
    title(ax, titulo);
    xlabel(ax, 'Eje X');
    ylabel(ax, 'Eje Y');
    legend(ax, titulo, 'Location', 'best');
    
    % Configuraciones adicionales del eje
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    ax.Box = 'off';
    
    fprintf('\n¡Gráfica generada con éxito!\n');
end