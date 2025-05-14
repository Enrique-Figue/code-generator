function [] = cuadratica()
    % Solicitar coeficientes al usuario
    a = input('Ingrese el coeficiente cuadrático (a): ');
    b = input('Ingrese el coeficiente lineal (b): ');
    c = input('Ingrese el término independiente (c): ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Mostrar información de la ecuación
    fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
    fprintf('Discriminante: %.2f\n', discriminante);
    
    % Calcular y mostrar raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Raíces reales y distintas:\n  x1 = %.2f\n  x2 = %.2f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Raíz real única (doble):\n  x = %.2f\n', x);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        fprintf('Raíces complejas conjugadas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Visualización gráfica
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'LineWidth', 2);
    grid on;
    title(['Función Cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    
    % Mostrar raíces reales en gráfico si existen
    if discriminante >= 0
        hold on;
        if discriminante > 0
            plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
            legend('Función', 'Raíces Reales', 'Location', 'best');
        else
            plot(x, zeros(size(x)), 'r--');
            plot(x, 0, 'ro', 'MarkerSize', 8);
            legend('Función', 'Eje x', 'Raíz Doble', 'Location', 'best');
        end
        hold off;
    end
end