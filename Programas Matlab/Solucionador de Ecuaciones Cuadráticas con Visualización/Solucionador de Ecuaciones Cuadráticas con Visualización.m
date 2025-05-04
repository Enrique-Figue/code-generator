% Descripción: Resuelve la ecuación ax² + bx + c = 0 y grafica la función
% Características:
%   1. Calcula raíces reales y complejas
%   2. Verifica casos especiales (ecuación lineal, identidad)
%   3. Muestra pasos intermedios
%   4. Genera gráfico de la función en el dominio real

function quadratic_solver()
    % Solicitar coeficientes al usuario
    disp('Solución de ecuación cuadrática: ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    b = input('Ingrese coeficiente b: ');
    c = input('Ingrese coeficiente c: ');
    
    % Mostrar ecuación ingresada
    fprintf('\nEcuación a resolver: (%g)x² + (%g)x + (%g) = 0\n', a, b, c);
    
    % Caso especial: a = 0 (ecuación lineal)
    if a == 0
        disp('Caso especial: Ecuación lineal');
        if b == 0
            if c == 0
                disp('Identidad: 0 = 0 (Todos los x son solución)');
            else
                disp('Ecuación imposible: No existe solución');
            end
        else
            x = -c/b;
            fprintf('Solución única: x = %g\n', x);
        end
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    fprintf('Discriminante: %g\n', discriminante);
    
    % Calcular raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales:\n x₁ = %g\n x₂ = %g\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Raíz única (doble): x = %g\n', x);
    else
        real_part = -b/(2*a);
        imag_part = sqrt(-discriminante)/(2*a);
        fprintf('Raíces complejas conjugadas:\n x₁ = %g + %gi\n x₂ = %g - %gi\n',...
                real_part, imag_part, real_part, imag_part);
    end
    
    % Graficar función
    x_vals = linspace(-10, 10, 400);
    y_vals = a*x_vals.^2 + b*x_vals + c;
    
    figure;
    plot(x_vals, y_vals, 'b', 'LineWidth', 2);
    hold on;
    title(sprintf('Gráfico de f(x) = %gx² + %gx + %g', a, b, c));
    xlabel('x');
    ylabel('f(x)');
    grid on;
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    
    % Marcar raíces reales
    if discriminante >= 0 && a ~= 0
        if discriminante > 0
            plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
        else
            plot(x, 0, 'ro', 'MarkerSize', 8);
        end
    end
    legend('Función', 'Raíces', 'Location', 'best');
end