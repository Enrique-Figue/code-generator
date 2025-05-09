% Descripción: Grafica una función matemática y su derivada en un intervalo dado, mostrando puntos críticos y áreas de crecimiento/decrecimiento.

function graficador_funcion_derivada
    % Solicitar entrada de usuario
    func_str = input('Ingrese la función f(x) (ej: x^2 + 3*x): ', 's');
    lim_inf = input('Límite inferior del dominio: ');
    lim_sup = input('Límite superior del dominio: ');
    
    % Crear variables simbólicas y funciones
    syms x;
    try
        f = str2sym(func_str);
        df = diff(f, x);
    catch
        error('Expresión no válida. Use variable x y operadores MATLAB compatibles.');
    end
    
    % Convertir a funciones manejables
    f_handle = matlabFunction(f);
    df_handle = matlabFunction(df);
    
    % Generar datos para gráfico
    x_vals = linspace(lim_inf, lim_sup, 1000);
    y_vals = f_handle(x_vals);
    dy_vals = df_handle(x_vals);
    
    % Configurar figura
    figure('Color', 'white', 'Name', 'Función y su Derivada');
    ax = gca;
    hold on;
    
    % Graficar función principal
    plot(x_vals, y_vals, 'b', 'LineWidth', 2, 'DisplayName', 'f(x)');
    
    % Graficar derivada
    plot(x_vals, dy_vals, 'r--', 'LineWidth', 1.5, 'DisplayName', 'f''(x)');
    
    % Encontrar y marcar puntos críticos
    criticos = solve(df == 0, x);
    criticos = criticos(imag(criticos) == 0 & criticos >= lim_inf & criticos <= lim_sup);
    if ~isempty(criticos)
        scatter(double(criticos), f_handle(double(criticos)), 100, 'k', 'filled',...
               'DisplayName', 'Puntos Críticos');
    end
    
    % Sombrear áreas de crecimiento/decrecimiento
    xq = linspace(lim_inf, lim_sup, 1000);
    mask_crec = dy_vals > 0;
    area(x_vals(mask_crec), y_vals(mask_crec), 'FaceColor', [0 0.5 0 0.3], 'EdgeColor', 'none',...
        'DisplayName', 'Función Creciente');
    mask_decrec = dy_vals < 0;
    area(x_vals(mask_decrec), y_vals(mask_decrec), 'FaceColor', [0.5 0 0 0.3], 'EdgeColor', 'none',...
        'DisplayName', 'Función Decreciente');
    
    % Configuración de ejes y leyenda
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    box off;
    legend('show', 'Location', 'best');
    title(['Análisis de: ' strrep(func_str, '*', '')]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    
    % Añadir información dinámica en esquina
    dim = [0.15 0.7 0.2 0.2];
    str = {'Características:', ['Dominio: [' num2str(lim_inf) ', ' num2str(lim_sup) ']'],...
           ['Puntos críticos: ' num2str(numel(criticos))]};
    annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on',...
              'BackgroundColor', [1 1 1 0.7], 'FontSize', 9);
end