coef = inputdlg({'Introduzca el coeficiente a:','Introduzca el coeficiente b:','Introduzca el coeficiente c:'}, 'Entrada de coeficientes', [1 40]);
a = str2double(coef{1});
b = str2double(coef{2});
c = str2double(coef{3});

% Verificar entrada numérica válida
if isnan(a) || isnan(b) || isnan(c)
    msgbox('Error: Por favor ingrese valores numéricos válidos.', 'Error', 'error');
    return;
end

% Casos especiales para ecuaciones no cuadráticas
if a == 0
    if b == 0
        if c == 0
            msgbox('La ecuación tiene infinitas soluciones.', 'Resultado', 'help');
        else
            msgbox('La ecuación no tiene solución.', 'Resultado', 'help');
        end
    else
        x = -c / b;
        msgbox(sprintf('La ecuación es lineal. Solución: x = %.2f', x), 'Resultado', 'help');
    end
else
    % Cálculo del discriminante y raíces
    discriminante = b^2 - 4*a*c;
    x1 = (-b + sqrt(discriminante)) / (2*a);
    x2 = (-b - sqrt(discriminante)) / (2*a);
    
    % Determinación del tipo de raíces
    if discriminante > 0
        mensaje = sprintf('Raíces reales distintas:\nx₁ = %.2f\nx₂ = %.2f', x1, x2);
    elseif discriminante == 0
        mensaje = sprintf('Raíz real repetida:\nx = %.2f', x1);
    else
        % Formato para números complejos
        realPart = -b / (2*a);
        imagPart = sqrt(-discriminante) / (2*a);
        mensaje = sprintf('Raíces complejas conjugadas:\nx₁ = %.2f + %.2fi\nx₂ = %.2f - %.2fi', realPart, imagPart, realPart, imagPart);
    end
    msgbox(mensaje, 'Resultado', 'help');
end