% Descripción: Resuelve una ecuación cuadrática ax² + bx + c = 0 y grafica la función
% Uso: 
%   1. Ejecute el programa
%   2. Ingrese los coeficientes a, b, c cuando se le soliciten
%   3. Vea las raíces calculadas y la gráfica correspondiente

function cuadratica()
    % Obtener coeficientes del usuario
    prompt = {'Coeficiente a:', 'Coeficiente b:', 'Coeficiente c:'};
    dlgtitle = 'Entrada para ecuación cuadrática';
    dims = [1 35];
    coefficients = inputdlg(prompt, dlgtitle, dims);
    
    % Convertir entradas a numéricas
    a = str2double(coefficients{1});
    b = str2double(coefficients{2});
    c = str2double(coefficients{3});
    
    % Validar entrada
    if isnan(a) || isnan(b) || isnan(c)
        errordlg('Entrada no válida: todos los coeficientes deben ser números', 'Error');
        return;
    end
    
    if a == 0
        errordlg('El coeficiente "a" no puede ser cero en una ecuación cuadrática', 'Error');
        return;
    end
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Calcular raíces
    if discriminante > 0
        x1 = (-b + sqrt(discriminante))/(2*a);
        x2 = (-b - sqrt(discriminante))/(2*a);
        msg = sprintf('Raíces reales y distintas:\nx₁ = %.2f\nx₂ = %.2f', x1, x2);
    elseif discriminante == 0
        x1 = -b/(2*a);
        msg = sprintf('Raíz real única:\nx = %.2f', x1);
    else
        realPart = -b/(2*a);
        imagPart = sqrt(-discriminante)/(2*a);
        msg = sprintf('Raíces complejas conjugadas:\nx₁ = %.2f + %.2fi\nx₂ = %.2f - %.2fi',...
                     realPart, imagPart, realPart, imagPart);
    end
    
    % Mostrar resultados
    disp('-----------------------------------');
    disp('Solución de la ecuación cuadrática:');
    disp(['Ecuación: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c), ' = 0']);
    disp(msg);
    disp('-----------------------------------');
    
    % Crear gráfico
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    figure;
    plot(x, y, 'LineWidth', 2);
    hold on;
    title(['Función cuadrática: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    
    % Marcar raíces reales
    if discriminante >= 0
        if discriminante > 0
            plot([x1, x2], [0, 0], 'ro', 'MarkerSize', 8);
            legend('Función', 'Raíces reales', 'Location', 'best');
        else
            plot(x1, 0, 'ro', 'MarkerSize', 8);
            legend('Función', 'Raíz única', 'Location', 'best');
        end
    end
end