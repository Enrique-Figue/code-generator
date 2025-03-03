function quadratic_solver()
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática: ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    
    % Validar que sea ecuación cuadrática
    if a == 0
        error('El coeficiente "a" no puede ser cero');
    end
    
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante: %.2f\n', discriminante);
    
    % Calcular raíces según el discriminante
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales:\n x1 = %.2f\n x2 = %.2f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Una raíz real doble:\n x = %.2f\n', x);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Graficar la función cuadrática
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'b', 'LineWidth', 2);
    hold on;
    title(['Gráfica de y = ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('y');
    grid on;
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    
    % Marcar raíces reales si existen
    if discriminante >= 0
        if discriminante > 0
            plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
        else
            plot(x, zeros(size(x)), 'r', 'LineWidth', 1); % Eje x
            plot(x, zeros(size(x)), 'r', 'LineWidth', 1); % Eje x repetido (redundante)
            plot(x1, 0, 'ro', 'MarkerSize', 8);
        end
    end
    legend('Función', 'Raíces', 'Location', 'best');
    hold off;
end