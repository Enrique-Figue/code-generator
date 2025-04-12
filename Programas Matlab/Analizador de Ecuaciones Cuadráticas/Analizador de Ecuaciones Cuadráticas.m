% Descripción: Este programa calcula las raíces de una ecuación cuadrática ax² + bx + c = 0,
%              verifica la naturaleza de las raíces, grafica la función y muestra los resultados detallados.
%              Incluye manejo de errores para coeficientes inválidos y ecuaciones no cuadráticas.

function analizador_cuadratico()
    clc;
    disp('ANALIZADOR DE ECUACIONES CUADRÁTICAS');
    disp('-----------------------------------');
    
    % Entrada de coeficientes con validación
    try
        a = input('Ingrese el coeficiente a (diferente de 0): ');
        if a == 0
            error('El coeficiente "a" no puede ser cero en una ecuación cuadrática.');
        end
        b = input('Ingrese el coeficiente b: ');
        c = input('Ingrese el coeficiente c: ');
    catch
        disp('Error: Entrada no válida. Por favor ingrese valores numéricos.');
        return;
    end
    
    % Cálculo del discriminante
    discriminante = b^2 - 4*a*c;
    
    % Determinación de la naturaleza de las raíces
    if discriminante > 0
        tipo_raices = 'dos raíces reales distintas';
    elseif discriminante == 0
        tipo_raices = 'una raíz real doble';
    else
        tipo_raices = 'dos raíces complejas conjugadas';
    end
    
    % Cálculo de las raíces
    raiz1 = (-b + sqrt(complex(discriminante))) / (2*a);
    raiz2 = (-b - sqrt(complex(discriminante))) / (2*a);
    
    % Mostrar resultados
    fprintf('\nRESULTADOS:');
    fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0', a, b, c);
    fprintf('\nDiscriminante: %.2f', discriminante);
    fprintf('\nNaturaleza: %s', tipo_raices);
    fprintf('\nRaíces: %.4f y %.4f\n', raiz1, raiz2);
    
    % Graficación de la función
    x = linspace(-10, 10, 400);
    y = a*x.^2 + b*x + c;
    
    figure('Name','Gráfico de la Función Cuadrática');
    plot(x, y, 'b-', 'LineWidth', 1.5);
    hold on;
    scatter([real(raiz1), real(raiz2)], [0, 0], 100, 'r', 'filled');
    title(sprintf('f(x) = %.2fx² + %.2fx + %.2f', a, b, c));
    xlabel('x');
    ylabel('f(x)');
    grid on;
    legend('Función cuadrática', 'Raíces', 'Location', 'best');
    hold off;
    
    disp('¡Análisis completado! Verifique la ventana gráfica.');
end