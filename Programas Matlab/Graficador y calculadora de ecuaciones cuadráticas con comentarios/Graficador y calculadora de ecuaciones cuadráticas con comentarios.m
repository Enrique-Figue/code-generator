% Este programa calcula y grafica una ecuación cuadrática de la forma ax² + bx + c
% Incluye: cálculo de raíces, vértice, discriminante y representación gráfica
% Entrada: Coeficientes a, b, c mediante cuadro de diálogo
% Salida: Gráfico de la función y cuadro con información clave

function cuadratica()
    % Obtener coeficientes del usuario
    prompt = {'Coeficiente a:','Coeficiente b:','Coeficiente c:'};
    titulo = 'Ingrese parámetros de ax² + bx + c';
    dims = [1 35];
    valores = inputdlg(prompt, titulo, dims);
    
    if isempty(valores)
        error('Entrada cancelada por el usuario');
    end
    
    a = str2double(valores{1});
    b = str2double(valores{2});
    c = str2double(valores{3});
    
    % Validar entrada
    if any(isnan([a b c]))
        errordlg('Entrada inválida: deben ser números reales','Error');
        return;
    end
    
    % Calcular componentes clave
    discriminante = b^2 - 4*a*c;
    vertice_x = -b/(2*a);
    vertice_y = a*(vertice_x)^2 + b*vertice_x + c;
    
    % Calcular raíces
    if discriminante >= 0
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
        tipo_raices = 'Reales';
    else
        real_part = -b/(2*a);
        imag_part = sqrt(-discriminante)/(2*a);
        raiz1 = complex(real_part, imag_part);
        raiz2 = complex(real_part, -imag_part);
        tipo_raices = 'Complejas';
    end
    
    % Generar gráfico
    x = linspace(vertice_x-5, vertice_x+5, 400);
    y = a*x.^2 + b*x + c;
    
    figure('Name','Graficador Cuadrático');
    plot(x, y, 'b-', 'LineWidth', 2);
    hold on;
    plot(vertice_x, vertice_y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor','r');
    title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función cuadrática', 'Vértice', 'Location','best');
    
    % Mostrar resultados
    resultados = {sprintf('Raíces: %s', tipo_raices),...
                  sprintf('• Raíz 1: %.4f', raiz1),...
                  sprintf('• Raíz 2: %.4f', raiz2),...
                  sprintf('Vértice: (%.2f, %.2f)', vertice_x, vertice_y),...
                  sprintf('Discriminante: %.2f', discriminante)};
              
    msgbox(resultados, 'Resultados del análisis', 'help');
end