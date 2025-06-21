% Descripción: Este programa calcula y muestra las raíces reales o complejas de una ecuación cuadrática de la forma ax² + bx + c = 0.
% Entrada: Coeficientes a, b, c ingresados por el usuario
% Salida: Raíces de la ecuación y gráfico de la función cuadrática

function quadratic_solver()
    % Solicitar coeficientes al usuario
    a = input('Ingrese el coeficiente a (diferente de 0): ');
    if a == 0
        error('El coeficiente a no puede ser cero para una ecuación cuadrática');
    end
    b = input('Ingrese el coeficiente b: ');
    c = input('Ingrese el coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante > 0
        % Dos raíces reales distintas
        x1 = (-b + sqrt(discriminante)) / (2*a);
        x2 = (-b - sqrt(discriminante)) / (2*a);
        tipo_raices = 'reales y distintas';
    elseif discriminante == 0
        % Una raíz real doble
        x1 = -b / (2*a);
        x2 = x1;
        tipo_raices = 'reales e iguales';
    else
        % Raíces complejas conjugadas
        parte_real = -b / (2*a);
        parte_imag = sqrt(-discriminante) / (2*a);
        x1 = complex(parte_real, parte_imag);
        x2 = complex(parte_real, -parte_imag);
        tipo_raices = 'complejas conjugadas';
    end
    
    % Mostrar resultados
    fprintf('\nSolución:\n');
    fprintf('Discriminante: %.2f\n', discriminante);
    fprintf('Tipo de raíces: %s\n', tipo_raices);
    fprintf('Raíz 1: %s\n', num2str(x1));
    fprintf('Raíz 2: %s\n\n', num2str(x2));
    
    % Crear gráfico de la función cuadrática
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    grid on;
    
    % Destacar raíces reales si existen
    if isreal(x1)
        plot([x1 x2], [0 0], 'ro', 'MarkerSize', 10, 'LineWidth', 2);
    end
    
    title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    legend('Función cuadrática', 'Raíces', 'Location', 'best');
    hold off;
end