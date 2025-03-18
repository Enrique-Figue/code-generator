% Descripción: Calcula las raíces de una ecuación cuadrática mostrando los pasos intermedios
% y explicando la naturaleza de las soluciones según el discriminante.

function solucion_cuadratica
    % Mostrar introducción
    disp('SOLUCIONADOR DE ECUACIÓN CUADRÁTICA: ax² + bx + c = 0');
    disp('-----------------------------------------------');
    
    % Solicitar coeficientes con validación
    a = input_valido('Ingrese coeficiente a (diferente de cero): ', true);
    b = input_valido('Ingrese coeficiente b: ');
    c = input_valido('Ingrese coeficiente c: ');
    
    % Calcular discriminante
    discriminante = b^2 - 4*a*c;
    
    % Mostrar proceso matemático
    fprintf('\nPASO 1: Calcular discriminante D = b² - 4ac\n');
    fprintf('D = (%g)² - 4*(%g)*(%g) = %g\n\n', b, a, c, discriminante);
    
    % Determinar tipo de raíces
    if discriminante > 0
        fprintf('PASO 2: Discriminante positivo → 2 raíces reales distintas\n');
        raiz1 = (-b + sqrt(discriminante))/(2*a);
        raiz2 = (-b - sqrt(discriminante))/(2*a);
    elseif discriminante == 0
        fprintf('PASO 2: Discriminante cero → 1 raíz real doble\n');
        raiz1 = -b/(2*a);
        raiz2 = raiz1;
    else
        fprintf('PASO 2: Discriminante negativo → 2 raíces complejas conjugadas\n');
        realPart = -b/(2*a);
        imagPart = sqrt(abs(discriminante))/(2*a);
        raiz1 = complex(realPart, imagPart);
        raiz2 = complex(realPart, -imagPart);
    end
    
    % Mostrar resultados
    fprintf('\nSOLUCIONES:\n');
    fprintf('x₁ = %s\n', formatear_numero(raiz1));
    fprintf('x₂ = %s\n', formatear_numero(raiz2));
end

function valor = input_valido(mensaje, evitar_cero)
    % Función auxiliar para entrada validada
    if nargin < 2, evitar_cero = false; end
    while true
        valor = input(mensaje);
        if evitar_cero && valor == 0
            fprintf('¡Error! El coeficiente a no puede ser cero\n');
        else
            break;
        end
    end
end

function str = formatear_numero(num)
    % Formatea números reales/complejos para mejor visualización
    if imag(num) == 0
        str = sprintf('%.4g', real(num));
    else
        str = sprintf('%.4g %s %.4gi', real(num), '±', abs(imag(num)));
    end
end