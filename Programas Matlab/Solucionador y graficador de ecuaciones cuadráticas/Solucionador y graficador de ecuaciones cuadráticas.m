% Descripción: Calcula raíces de una ecuación cuadrática y grafica la función
% Notas: Incluye manejo de casos especiales y visualización gráfica

function cuadratica()
    % Solicitar coeficientes al usuario
    disp('Resolución de ecuación cuadrática ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Verificar si es realmente cuadrática
    if a == 0
        disp('Error: El coeficiente a no puede ser cero (no es cuadrática)');
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('\nDiscriminante: %.2f\n', discriminante);
    
    % Calcular raíces según el discriminante
    if discriminante > 0
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales distintas:\n  x1 = %.2f\n  x2 = %.2f\n', raiz1, raiz2);
    elseif discriminante == 0
        raiz = -b/(2*a);
        fprintf('Una raíz real doble:\n  x = %.2f\n', raiz);
    else
        parte_real = -b/(2*a);
        parte_imag = sqrt(abs(discriminante))/(2*a);
        fprintf('Raíces complejas conjugadas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi\n', parte_real, parte_imag, parte_real, parte_imag);
    end
    
    % Configurar parámetros para la gráfica
    vertice_x = -b/(2*a);
    rango = max(3, 2*sqrt(abs(discriminante)));  % Ajuste automático del rango de visualización
    x = linspace(vertice_x - rango, vertice_x + rango, 400);
    y = a*x.^2 + b*x + c;
    
    % Crear figura con propiedades
    figure('Name','Gráfica Cuadrática','NumberTitle','off');
    plot(x, y, 'LineWidth', 2);
    hold on;
    grid on;
    
    % Añadir elementos gráficos
    title(sprintf('Función: %.1fx² + %.1fx + %.1f', a, b, c));
    xlabel('x');
    ylabel('f(x)');
    xline(0, 'k--');  % Eje y
    yline(0, 'k--');  % Eje x
    scatter(vertice_x, a*vertice_x^2 + b*vertice_x + c, 100, 'r', 'filled', 'MarkerEdgeColor','k');
    
    % Marcar raíces reales si existen
    if discriminante >= 0
        scatter([raiz1, raiz2], [0, 0], 100, 'g', 'filled', 'MarkerEdgeColor','k');
        legend('Función','Vértice','Raíces','Location','best');
    else
        legend('Función','Vértice','Location','best');
    end
    
    hold off;
end