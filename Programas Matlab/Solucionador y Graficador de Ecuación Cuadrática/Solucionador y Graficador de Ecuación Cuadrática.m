% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% calcula sus raíces y grafica la función, mostrando las raíces reales si existen.

function cuadratica()
    % Solicitar coeficientes al usuario
    a = input('Ingrese el coeficiente a: ');
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Calcular discriminante
    disc = b^2 - 4*a*c;
    
    % Calcular y mostrar raíces
    if disc > 0
        x1 = (-b + sqrt(disc))/(2*a);
        x2 = (-b - sqrt(disc))/(2*a);
        fprintf('Raíces reales y distintas:\nx1 = %.2f\nx2 = %.2f\n', x1, x2);
    elseif disc == 0
        x1 = -b/(2*a);
        fprintf('Raíz real repetida:\nx = %.2f\n', x1);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-disc)/(2*a);
        fprintf('Raíces complejas conjugadas:\nx1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Graficar la función cuadrática
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    figure;
    plot(x, y, 'b-', 'LineWidth', 1.5);
    hold on;
    
    % Marcar raíces reales si existen
    if disc >= 0
        plot(x1, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
        if disc > 0
            plot(x2, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
        end
    end
    
    grid on;
    xlabel('x');
    ylabel('f(x)');
    title(['f(x) = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
    legend('Función', 'Raíces', 'Location', 'best');
    hold off;
end