% Solicitar coeficientes de la ecuación cuadrática ax^2 + bx + c = 0
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Verificar si la ecuación es lineal (a=0)
if a == 0
    % Manejar caso lineal bx + c = 0
    if b == 0
        if c == 0
            disp('La ecuación es 0 = 0 (infinitas soluciones).');
        else
            disp('La ecuación no tiene solución (contradicción).');
        end
    else
        x = -c / b;
        fprintf('Solución lineal: x = %.2f\n', x);
        % Graficar función lineal
        x_vals = linspace(-10, 10, 100);
        y_vals = b * x_vals + c;
        plot(x_vals, y_vals, 'b-', 'LineWidth', 2);
        title('Gráfico de la función lineal');
        xlabel('x'); ylabel('y');
        grid on;
    end
else
    % Calcular discriminante para ecuación cuadrática
    discriminante = b^2 - 4*a*c;
    
    % Determinar tipo de raíces
    if discriminante > 0
        raiz1 = (-b + sqrt(discriminante)) / (2*a);
        raiz2 = (-b - sqrt(discriminante)) / (2*a);
        fprintf('Dos raíces reales:\n x1 = %.2f\n x2 = %.2f\n', raiz1, raiz2);
    elseif discriminante == 0
        raiz = -b / (2*a);
        fprintf('Una raíz real doble:\n x = %.2f\n', raiz);
    else
        realPart = -b / (2*a);
        imagPart = sqrt(-discriminante) / (2*a);
        fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Graficar función cuadrática
    x_vertice = -b/(2*a);
    x_vals = linspace(x_vertice - 5, x_vertice + 5, 100);
    y_vals = a*x_vals.^2 + b*x_vals + c;
    plot(x_vals, y_vals, 'r-', 'LineWidth', 2);
    title('Gráfico de la función cuadrática');
    xlabel('x'); ylabel('y');
    grid on;
end