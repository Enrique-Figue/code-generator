% Descripción: Este programa solicita una función matemática al usuario,
% grafica la función, su derivada y su integral en un mismo plano,
% proporcionando una visualización clara de sus relaciones.

function graficar_funcion
    % Solicitar la función al usuario (ej. sin(x), x^2 + 3, exp(-x)*cos(x))
    func_str = input('Ingrese una función en términos de x: ', 's');
    
    % Configuración simbólica
    syms x;
    try
        f = str2sym(func_str);
    catch
        error('Formato de función no válido. Use sintaxis MATLAB válida (ej. x^2 + 3)');
    end
    
    % Calcular derivada e integral
    df = diff(f, x);
    intf = int(f, x);
    
    % Convertir a funciones manejables
    f_handle = matlabFunction(f);
    df_handle = matlabFunction(df);
    intf_handle = matlabFunction(intf);
    
    % Crear dominio y evaluar funciones
    x_vals = linspace(-5, 5, 500);
    y_func = f_handle(x_vals);
    y_deriv = df_handle(x_vals);
    y_int = intf_handle(x_vals);
    
    % Configurar la figura
    figure('Name','Comparación de Función, Derivada e Integral', 'NumberTitle','off');
    hold on;
    
    % Graficar las tres curvas
    plot(x_vals, y_func, 'b', 'LineWidth', 2, 'DisplayName','Función original');
    plot(x_vals, y_deriv, 'r--', 'LineWidth', 2, 'DisplayName','Derivada');
    plot(x_vals, y_int, 'g:', 'LineWidth', 2, 'DisplayName','Integral');
    
    % Añadir elementos gráficos
    title(['Análisis de: ' func_str]);
    xlabel('x');
    ylabel('f(x)');
    legend('show', 'Location', 'best');
    grid on;
    hold off;
    
    % Mostrar expresiones en consola
    fprintf('\nFunción ingresada: %s\n', func_str);
    fprintf('Derivada calculada: %s\n', char(df));
    fprintf('Integral calculada: %s + C\n\n', char(intf));
end