% Descripción: Este programa solicita una función matemática al usuario,
% calcula su derivada y grafica ambas en un mismo gráfico para visualizar
% su relación. Ideal para entender conceptos básicos de cálculo.

function graficador_derivada
    % Crear diálogo de entrada para el usuario
    prompt = {'Ingrese función f(x) (ej: x^2 + sin(x)):'};
    dlgtitle = 'Función de entrada';
    definput = {'x^2'};
    opts.Interpreter = 'tex'; % Permitir notación matemática básica
    respuesta = inputdlg(prompt, dlgtitle, [1 40], definput, opts);
    
    if isempty(respuesta)
        error('Entrada cancelada por el usuario');
    end
    
    % Configurar variable simbólica
    syms x;
    try
        f = str2sym(respuesta{1});
    catch
        error('Expresión no válida. Use variable x y sintaxis MATLAB');
    end
    
    % Calcular derivada
    df = diff(f, x);
    
    % Convertir a funciones manejables
    f_handle = matlabFunction(f);
    df_handle = matlabFunction(df);
    
    % Generar datos para gráfico
    x_vals = linspace(-5, 5, 500);
    y_func = f_handle(x_vals);
    y_deriv = df_handle(x_vals);
    
    % Configurar figura
    figure('Name','Función y su Derivada','NumberTitle','off');
    plot(x_vals, y_func, 'b', 'LineWidth', 2);
    hold on;
    plot(x_vals, y_deriv, 'r--', 'LineWidth', 2);
    hold off;
    
    % Personalizar gráfico
    grid on;
    title(['f(x) = ' char(f) ' y su derivada']);
    xlabel('x');
    ylabel('f(x) / f''(x)');
    legend('Función original','Derivada', 'Location','best');
    
    % Mostrar fórmula de la derivada en consola
    disp(['Función ingresada: f(x) = ' char(f)]);
    disp(['Derivada calculada: f''(x) = ' char(df)]);
end