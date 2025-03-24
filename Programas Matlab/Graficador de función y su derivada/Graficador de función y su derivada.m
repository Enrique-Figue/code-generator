% Descripción: Este programa solicita al usuario una función matemática en términos de x,
% calcula su derivada simbólicamente y grafica ambas funciones en un mismo plano.
% Los ejes se ajustan automáticamente y se incluyen leyendas explicativas.

function graficador_derivada
    % Mostrar información inicial al usuario
    disp('Bienvenido al graficador de funciones y sus derivadas')
    disp('Ingrese una función en términos de x (ejemplo: x^2 + sin(x))')
    
    % Crear variable simbólica y solicitar función
    syms x
    try
        f = input('Función: ', 's');  % Capturar entrada como cadena
        expr = str2sym(f);           % Convertir a expresión simbólica
        
        % Calcular derivada
        derivada = diff(expr, x);
        
        % Convertir a funciones evaluables
        f_func = matlabFunction(expr);
        df_func = matlabFunction(derivada);
        
        % Generar valores para el gráfico
        x_vals = linspace(-2*pi, 2*pi, 500);
        y_func = f_func(x_vals);
        y_deriv = df_func(x_vals);
        
        % Configuración del gráfico
        figure('Color', 'white', 'Name', 'Función y su Derivada')
        plot(x_vals, y_func, 'LineWidth', 2, 'DisplayName', 'Función original')
        hold on
        plot(x_vals, y_deriv, 'LineWidth', 2, 'LineStyle', '--', 'DisplayName', 'Derivada')
        
        % Ajustes visuales
        title(['Función: ' f ' y su derivada'])
        xlabel('Eje x')
        ylabel('Eje y')
        legend('show', 'Location', 'best')
        grid on
        axis tight
        hold off
        
    catch
        error('Error: Por favor ingrese una función válida usando x como variable')
    end
end