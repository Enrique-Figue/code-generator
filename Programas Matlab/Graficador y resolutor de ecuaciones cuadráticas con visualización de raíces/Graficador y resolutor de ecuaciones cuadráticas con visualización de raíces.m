function cuadratica()
    % Solicitar coeficientes al usuario
    a = input('Introduce el coeficiente a: ');
    b = input('Introduce el coeficiente b: ');
    c = input('Introduce el coeficiente c: ');
    
    % Verificar si es ecuación cuadrática
    if a == 0
        error('El coeficiente a no puede ser cero para una ecuación cuadrática');
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    raiz1 = (-b + sqrt(discriminante)) / (2*a);
    raiz2 = (-b - sqrt(discriminante)) / (2*a);
    
    % Mostrar información teórica
    disp('Ecuación cuadrática general: ax² + bx + c = 0');
    disp(['Coeficientes introducidos: a = ' num2str(a) ', b = ' num2str(b) ', c = ' num2str(c)]);
    disp(['Discriminante: ' num2str(discriminante)]);
    
    % Determinar tipo de raíces y mostrar resultados
    if discriminante >= 0
        disp('Raíces reales:');
        disp(['x1 = ' num2str(raiz1)]);
        disp(['x2 = ' num2str(raiz2)]);
    else
        disp('Raíces complejas conjugadas:');
        disp(['x1 = ' num2str(raiz1)]);
        disp(['x2 = ' num2str(raiz2)]);
    end
    
    % Crear vector x para graficar
    x_vertice = -b/(2*a);
    x = linspace(x_vertice-5, x_vertice+5, 400);
    
    % Calcular valores y
    y = a*x.^2 + b*x + c;
    
    % Crear figura
    figure;
    plot(x, y, 'LineWidth', 2);
    hold on;
    grid on;
    
    % Marcar raíces según tipo
    if discriminante >= 0
        plot(real(raiz1), 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
        plot(real(raiz2), 0, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    else
        plot(real(raiz1), imag(raiz1), 'b*', 'MarkerSize', 10, 'LineWidth', 2);
        plot(real(raiz2), imag(raiz2), 'b*', 'MarkerSize', 10, 'LineWidth', 2);
    end
    
    % Configurar gráfico
    title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    legend('Función cuadrática', 'Raíces', 'Location', 'best');
    
    hold off;
end