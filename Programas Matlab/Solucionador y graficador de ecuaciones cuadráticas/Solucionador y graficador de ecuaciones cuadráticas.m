% Descripción: Este programa solicita los coeficientes de una ecuación cuadrática,
%              calcula sus raíces, el vértice de la parábola y grafica la función.

function cuadratica()
    % Solicitar coeficientes al usuario
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular y mostrar raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Raíces reales:\nx1 = %.2f\nx2 = %.2f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Raíz única: x = %.2f\n', x);
    else
        fprintf('Raíces complejas\n');
    end
    
    % Calcular y mostrar vértice
    h = -b/(2*a);
    k = a*h^2 + b*h + c;
    fprintf('Vértice en (%.2f, %.2f)\n', h, k);
    
    % Generar puntos para la gráfica
    x = linspace(h-5, h+5, 100);
    y = a*x.^2 + b*x + c;
    
    % Configurar y mostrar gráfica
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    plot(h, k, 'ro', 'MarkerSize', 8);
    title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('y');
    grid on;
    legend('Función', 'Vértice', 'Location', 'best');
    hold off;
end