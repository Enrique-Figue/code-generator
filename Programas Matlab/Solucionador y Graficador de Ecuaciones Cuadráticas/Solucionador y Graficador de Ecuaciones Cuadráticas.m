% Descripción: Este programa calcula las raíces de una ecuación cuadrática
% y grafica la función en el dominio real, mostrando las raíces encontradas.

function cuadratica()
    % Solicitar coeficientes al usuario
    disp('Ingrese coeficientes de la ecuación ax² + bx + c = 0:');
    a = input('a = ');
    b = input('b = ');
    c = input('c = ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante >= 0
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
        disp(['Raíces reales: x1 = ', num2str(raiz1), ', x2 = ', num2str(raiz2)]);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, ',...
              'x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
    end
    
    % Crear vector x para graficación
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    % Configurar y mostrar gráfico
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    
    % Marcar raíces reales si existen
    if discriminante >= 0
        plot(raiz1, 0, 'r*', 'MarkerSize', 10);
        plot(raiz2, 0, 'r*', 'MarkerSize', 10);
    end
    
    title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función', 'Raíces', 'Location', 'best');
    hold off;
end