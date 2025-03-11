% Descripción: Calcula las raíces de una ecuación cuadrática y grafica la función
% Uso: Ingresar coeficientes a, b, c cuando se solicite. El programa muestra:
%      1. Discriminante y tipo de raíces
%      2. Soluciones reales/complejas
%      3. Gráfico de la función en el dominio [-10, 10]

function cuadratica()
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    
    % Validar que sea ecuación cuadrática
    if a == 0
        error('El coeficiente a no puede ser cero en una ecuación cuadrática');
    end
    
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante: %.2f\n', discriminante);
    
    % Determinar tipo de raíces
    if discriminante > 0
        disp('Dos raíces reales distintas');
    elseif discriminante == 0
        disp('Una raíz real doble');
    else
        disp('Dos raíces complejas conjugadas');
    end
    
    % Calcular raíces
    x1 = (-b + sqrt(complex(discriminante))) / (2*a);
    x2 = (-b - sqrt(complex(discriminante))) / (2*a);
    
    % Mostrar resultados
    fprintf('x₁ = %s\n', num2str(x1));
    fprintf('x₂ = %s\n\n', num2str(x2));
    
    % Crear gráfico de la función
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'LineWidth', 2);
    hold on;
    plot(real(x1), 0, 'ro', 'MarkerSize', 8); % Marcar raíces
    plot(real(x2), 0, 'ro', 'MarkerSize', 8);
    title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función', 'Raíces', 'Location', 'best');
    hold off;
end