% Descripción: Calcula áreas de círculos/rectángulos y volumen de esferas
% con entrada interactiva, validación y formatos de salida.

function calculadora_geometrica()
    % Mostrar menú principal
    disp('Calculadora Geométrica');
    disp('1. Área de círculo');
    disp('2. Área de rectángulo');
    disp('3. Volumen de esfera');
    disp('4. Salir');
    
    try
        opcion = input('Seleccione una opción (1-4): ');
        
        switch opcion
            case 1
                radio = input('Ingrese radio del círculo: ');
                validar_positivo(radio);
                area = pi * radio^2;
                fprintf('Área del círculo: %.2f\n', area);
                
            case 2
                largo = input('Ingrese largo del rectángulo: ');
                ancho = input('Ingrese ancho del rectángulo: ');
                validar_positivo(largo);
                validar_positivo(ancho);
                area = largo * ancho;
                fprintf('Área del rectángulo: %.2f\n', area);
                
            case 3
                radio = input('Ingrese radio de la esfera: ');
                validar_positivo(radio);
                volumen = (4/3) * pi * radio^3;
                fprintf('Volumen de la esfera: %.2f\n', volumen);
                
            case 4
                disp('Saliendo...');
                return;
                
            otherwise
                error('Opción no válida');
        end
        
    catch exception
        fprintf('Error: %s\n', exception.message);
    end
end

function validar_positivo(valor)
    % Función auxiliar para validar valores positivos
    if valor <= 0 || ~isnumeric(valor)
        error('El valor debe ser un número positivo');
    end
end