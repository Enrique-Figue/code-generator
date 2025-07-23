% Descripción: Calcula el área de círculo, triángulo o cuadrado según selección del usuario,
% mostrando fórmulas matemáticas y validando entradas numéricas.

function calculadora_areas
    while true
        fprintf('\nCalculadora de Áreas Geométricas\n');
        fprintf('1) Círculo\n2) Triángulo\n3) Cuadrado\n4) Salir\n');
        
        opcion = input('Seleccione figura (1-4): ', 's');
        if isempty(opcion) || ~ismember(opcion, {'1','2','3','4'})
            fprintf('Opción no válida. Intente nuevamente.\n');
            continue;
        end
        
        switch str2double(opcion)
            case 1
                radio = obtener_numero('Ingrese radio del círculo: ');
                area = pi * radio^2;
                fprintf('Área = π × %.2f² = %.2f\n', radio, area);
                
            case 2
                base = obtener_numero('Ingrese base del triángulo: ');
                altura = obtener_numero('Ingrese altura del triángulo: ');
                area = (base * altura)/2;
                fprintf('Área = (%.2f × %.2f)/2 = %.2f\n', base, altura, area);
                
            case 3
                lado = obtener_numero('Ingrese lado del cuadrado: ');
                area = lado^2;
                fprintf('Área = %.2f² = %.2f\n', lado, area);
                
            case 4
                fprintf('¡Hasta luego!\n');
                return;
        end
    end
end

function num = obtener_numero(mensaje)
% Función auxiliar para validar entrada numérica positiva
    while true
        str = input(mensaje, 's');
        num = str2double(str);
        if isnan(num) || num <= 0
            fprintf('Error: Ingrese un número positivo válido.\n');
        else
            return;
        end
    end
end