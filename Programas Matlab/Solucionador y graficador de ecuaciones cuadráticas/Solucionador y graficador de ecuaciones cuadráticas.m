function quadratic_solver()
    % Solicita coeficientes al usuario
    prompts = {'Coeficiente a (a ≠ 0):', 'Coeficiente b:', 'Coeficiente c:'};
    dlg_title = 'Ecuación cuadrática ax² + bx + c = 0';
    coeffs = inputdlg(prompts, dlg_title);
    
    % Convierte entradas a números
    a = str2double(coeffs{1});
    b = str2double(coeffs{2});
    c = str2double(coeffs{3});
    
    % Verifica si es cuadrática
    if a == 0
        errordlg('El coeficiente a no puede ser cero', 'Error');
        return;
    end
    
    % Calcula el discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcula raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        raices = sprintf('Raíces reales: x1 = %.2f, x2 = %.2f', x1, x2);
    elseif discriminante == 0
        x1 = -b/(2*a);
        raices = sprintf('Raíz única: x = %.2f', x1);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        raices = sprintf('Raíces complejas: x = %.2f ± %.2fi', realPart, imagPart);
    end
    
    % Calcula vértice de la parábola
    vert_x = -b/(2*a);
    vert_y = a*(vert_x)^2 + b*vert_x + c;
    vertice = sprintf('Vértice: (%.2f, %.2f)', vert_x, vert_y);
    
    % Muestra resultados
    msgbox({raices, vertice}, 'Resultados');
    
    % Crea figura con gráfico
    x = linspace(vert_x - 5, vert_x + 5, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    plot(vert_x, vert_y, 'ro', 'MarkerSize', 8);
    title('Gráfico de la función cuadrática');
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función cuadrática', 'Vértice', 'Location', 'best');
    
    % Marca raíces reales si existen
    if discriminante >= 0 && a ~= 0
        if discriminante > 0
            plot([x1, x2], [0, 0], 'kx', 'MarkerSize', 10);
        else
            plot(x1, 0, 'kx', 'MarkerSize', 10);
        end
        legend('Función cuadrática', 'Vértice', 'Raíces', 'Location', 'best');
    end
end