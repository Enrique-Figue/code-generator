while true
    % Menú de selección de función
    disp('Seleccione una función para graficar, derivar e integrar:');
    disp('1. Seno');
    disp('2. Exponencial');
    disp('3. Cuadrática');
    disp('4. Salir');
    opcion = input('Ingrese el número de opción: ');
    
    % Configurar parámetros comunes
    x = linspace(0, 2*pi, 1000);
    leyendas = cell(1,3);
    
    switch opcion
        case 1 % Función seno
            y = sin(x);
            titulo = 'Función Seno';
            leyendas{1} = 'sen(x)';
        case 2 % Función exponencial
            y = exp(-x/2);
            titulo = 'Función Exponencial';
            leyendas{1} = 'e^{-x/2}';
        case 3 % Función cuadrática
            y = x.^2 - pi*x;
            titulo = 'Función Cuadrática';
            leyendas{1} = 'x^2 - πx';
        otherwise % Salir
            break;
    end
    
    if opcion < 1 || opcion > 3
        break; % Salir si opción no válida
    end
    
    % Cálculo de derivada numérica
    dy = gradient(y) ./ gradient(x);
    leyendas{2} = 'Derivada';
    
    % Cálculo de integral numérica
    integral = cumtrapz(x, y);
    leyendas{3} = 'Integral';
    
    % Crear figura
    figure;
    
    % Graficar función, derivada e integral
    yyaxis left
    plot(x, y, 'b', 'LineWidth', 1.5);
    hold on;
    plot(x, dy, 'r--', 'LineWidth', 1.5);
    ylabel('Valor función/derivada');
    
    yyaxis right
    plot(x, integral, 'g:', 'LineWidth', 1.5);
    ylabel('Valor integral');
    
    % Configuración de gráfico
    title([titulo ' y sus operadores']);
    xlabel('x');
    xlim([min(x) max(x)]);
    legend(leyendas, 'Location', 'northeast');
    grid on;
    hold off;
    
    % Mostrar área bajo la curva
    area_total = trapz(x, y);
    fprintf('Área bajo la curva: %.2f\n', area_total);
    
    % Preguntar por nueva operación
    continuar = input('¿Continuar? (s/n): ', 's');
    if lower(continuar) ~= 's'
        break;
    end
end