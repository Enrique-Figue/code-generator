function cuadratica()
    % Soluciona una ecuación cuadrática de la forma ax² + bx + c = 0
    % y grafica la función correspondiente con las raíces marcadas
    
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese el coeficiente a: ');
    while a == 0
        disp('a no puede ser cero para una ecuación cuadrática');
        a = input('Ingrese nuevamente el coeficiente a: ');
    end
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces según el discriminante
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        disp(['Dos raíces reales: x1 = ', num2str(x1), ', x2 = ', num2str(x2)]);
    elseif discriminante == 0
        x = -b/(2*a);
        disp(['Raíz única (doble): x = ', num2str(x)]);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(abs(discriminante))/(2*a);
        disp(['Raíces complejas: x1 = ', num2str(realPart), ' + ', num2str(imagPart), 'i, ',...
              'x2 = ', num2str(realPart), ' - ', num2str(imagPart), 'i']);
    end
    
    % Graficar la función cuadrática
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    figure;
    plot(x, y, 'LineWidth', 2);
    hold on;
    grid on;
    title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    
    % Marcar raíces si son reales
    if discriminante >= 0
        if discriminante > 0
            plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
        else
            plot(x, 0, 'ro', 'MarkerSize', 8);
        end
        legend('Función', 'Raíces', 'Location', 'best');
    else
        legend('Función', 'Location', 'best');
    end
end