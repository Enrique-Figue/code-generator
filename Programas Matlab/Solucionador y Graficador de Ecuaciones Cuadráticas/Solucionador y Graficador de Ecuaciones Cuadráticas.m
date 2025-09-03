function cuadratica()
    % Obtener coeficientes de la ecuación
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    
    % Validar entrada para coeficiente a
    a = 0;
    while a == 0
        a = input('Ingrese coeficiente a (diferente de cero): ');
    end
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        tipo_raices = 'Raíces reales distintas';
    elseif discriminante == 0
        x1 = -b/(2*a);
        x2 = NaN; % No es una raíz válida
        tipo_raices = 'Raíz real única';
    else
        real_part = -b/(2*a);
        imag_part = sqrt(-discriminante)/(2*a);
        x1 = complex(real_part, imag_part);
        x2 = complex(real_part, -imag_part);
        tipo_raices = 'Raíces complejas conjugadas';
    end
    
    % Calcular vértice de la parábola
    vertice_x = -b/(2*a);
    vertice_y = a*vertice_x^2 + b*vertice_x + c;
    
    % Mostrar resultados
    fprintf('\nResultados:');
    fprintf('\nDiscriminante: %.2f', discriminante);
    fprintf('\nTipo de raíces: %s', tipo_raices);
    fprintf('\nRaíz 1: %s', num2str(x1));
    if ~isnan(x2)
        fprintf('\nRaíz 2: %s', num2str(x2));
    end
    fprintf('\nVértice de la parábola: (%0.2f, %0.2f)', vertice_x, vertice_y);
    
    % Graficar la función
    x = linspace(vertice_x-5, vertice_x+5, 400);
    y = a*x.^2 + b*x + c;
    
    figure('Name','Gráfico de la Ecuación Cuadrática');
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    plot(vertice_x, vertice_y, 'ro', 'MarkerSize', 8);
    title(['$' num2str(a) 'x^2 + ' num2str(b) 'x + ' num2str(c) '$'], 'Interpreter','latex');
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función cuadrática', 'Vértice', 'Location','best');
end