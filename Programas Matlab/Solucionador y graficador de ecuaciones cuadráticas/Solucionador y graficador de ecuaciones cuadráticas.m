% Descripción: Este programa calcula las raíces de una ecuación cuadrática
% y grafica la función, mostrando puntos clave como vértice y interceptos.

function quadratic_solver()
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        disp(['Raíces reales distintas: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
    elseif discriminante == 0
        x = -b/(2*a);
        disp(['Raíz real doble: x = ', num2str(x)]);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(abs(discriminante))/(2*a);
        disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
    end
    
    % Calcular vértice de la parábola
    h = -b/(2*a);
    k = a*h^2 + b*h + c;
    disp(['Vértice de la parábola: (', num2str(h), ', ', num2str(k), ')']);
    
    % Crear vector x para gráfico
    x = linspace(h-5, h+5, 400);
    y = a*x.^2 + b*x + c;
    
    % Configurar y mostrar gráfico
    figure;
    plot(x, y, 'b', 'LineWidth', 2);
    hold on;
    plot(h, k, 'ro', 'MarkerSize', 8); % Marcar vértice
    if discriminante >= 0
        % Marcar raíces reales si existen
        plot([x1 x2], [0 0], 'go', 'MarkerSize', 8); 
    end
    title(['Gráfico de: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función cuadrática', 'Vértice', 'Raíces', 'Location', 'best');
    hold off;
end