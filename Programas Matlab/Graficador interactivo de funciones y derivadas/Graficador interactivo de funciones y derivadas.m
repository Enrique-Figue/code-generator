% Descripción: Grafica una función ingresada por el usuario y su derivada numérica
%              en el intervalo [-5, 5], útil para visualizar conceptos de cálculo

function graficador_derivadas
    % Solicitar función al usuario y convertir a función manejable
    f_str = input('Ingrese f(x) usando sintaxis Matlab (ej: x.^2 + sin(x)):\n> ', 's');
    f = str2func(['@(x) ' f_str]);
    
    % Configurar dominio y evaluar función
    x = linspace(-5, 5, 1000);  % Rango con resolución suficiente
    y = f(x);
    
    % Calcular derivada numérica usando diferencias finitas centrales
    h = x(2) - x(1);  % Tamaño de paso
    dy = (y(3:end) - y(1:end-2)) ./ (2*h);  % Fórmula centrada
    x_derivada = x(2:end-1);  % Ajustar dominio para derivada
    
    % Configurar figura y ejes
    figure('Name','Función y su Derivada','NumberTitle','off')
    yyaxis left  % Eje principal para la función original
    plot(x, y, 'b-', 'LineWidth', 1.5)
    ylabel('f(x)')
    
    yyaxis right  % Eje secundario para la derivada
    plot(x_derivada, dy, 'r--', 'LineWidth', 1.5)
    ylabel("f'(x)")
    
    % Configuración común de la gráfica
    grid on
    title(['Función: ' f_str])
    xlabel('Variable x')
    legend('Función original','Derivada numérica', 'Location', 'best')
    set(gca, 'FontSize', 10)
    
    % Ajustar escalas y relaciones de aspecto
    xlim([-5, 5])
    axis tight
end