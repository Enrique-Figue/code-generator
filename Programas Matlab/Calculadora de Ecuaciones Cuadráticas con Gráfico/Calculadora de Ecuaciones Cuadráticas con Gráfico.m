% Descripción: Calcula raíces, vértice y gráfica una ecuación cuadrática ax²+bx+c
% Autor: MathWorks Edu
% Entradas: Coeficientes a, b, c del usuario
% Salidas: Soluciones, vértice y gráfico de la parábola

function cuadratica()
    % Solicitar coeficientes al usuario
    disp('Calculadora de Ecuación Cuadrática: ax² + bx + c = 0');
    a = input('Ingrese coeficiente a: ');
    while ~isnumeric(a) || isempty(a)
        a = input('Entrada inválida. Ingrese un número para a: ');
    end
    
    b = input('Ingrese coeficiente b: ');
    while ~isnumeric(b) || isempty(b)
        b = input('Entrada inválida. Ingrese un número para b: ');
    end
    
    c = input('Ingrese coeficiente c: ');
    while ~isnumeric(c) || isempty(c)
        c = input('Entrada inválida. Ingrese un número para c: ');
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular y mostrar raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        fprintf('Dos raíces reales:\n x1 = %.2f\n x2 = %.2f\n', x1, x2);
    elseif discriminante == 0
        x = -b/(2*a);
        fprintf('Una raíz real doble:\n x = %.2f\n', x);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
    end
    
    % Calcular y mostrar vértice
    vertice_x = -b/(2*a);
    vertice_y = a*(vertice_x)^2 + b*vertice_x + c;
    fprintf('Vértice en: (%.2f, %.2f)\n', vertice_x, vertice_y);
    
    % Generar gráfico
    x = linspace(vertice_x-5, vertice_x+5, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    plot(vertice_x, vertice_y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    title(sprintf('Gráfico de y = %.1fx² + %.1fx + %.1f', a, b, c));
    xlabel('x');
    ylabel('y');
    grid on;
    
    % Mostrar dirección de apertura
    if a > 0
        disp('La parábola se abre hacia arriba (mínimo en el vértice)');
    else
        disp('La parábola se abre hacia abajo (máximo en el vértice)');
    end
end