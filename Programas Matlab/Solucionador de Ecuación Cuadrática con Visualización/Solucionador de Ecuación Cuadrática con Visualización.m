% Descripción: Calcula las raíces reales o complejas de una ecuación cuadrática
%              y grafica la función en el rango de las raíces encontradas.

function cuadratica()
    % Solicitar coeficientes al usuario
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante > 0
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Raíces reales:\n x1 = %.2f\n x2 = %.2f\n', raiz1, raiz2);
    elseif discriminante == 0
        raiz = -b/(2*a);
        fprintf('Raíz única:\n x = %.2f\n', raiz);
    else
        real_part = -b/(2*a);
        imag_part = sqrt(-discriminante)/(2*a);
        fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n',...
                real_part, imag_part, real_part, imag_part);
    end
    
    % Generar puntos para la gráfica
    x_min = -abs(b) - 3;
    x_max = abs(b) + 3;
    x = linspace(x_min, x_max, 100);
    y = a*x.^2 + b*x + c;
    
    % Configurar y mostrar gráfico
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    grid on;
    title(sprintf('Gráfica de y = %.1fx² + %.1fx + %.1f', a, b, c));
    xlabel('x');
    ylabel('y');
    
    % Marcar raíces reales si existen
    if discriminante >= 0
        if discriminante > 0
            plot([raiz1, raiz2], [0, 0], 'ro', 'MarkerSize', 8);
            legend('Función', 'Raíces reales');
        else
            plot(raiz, 0, 'ro', 'MarkerSize', 8);
            legend('Función', 'Raíz única');
        end
    end
end