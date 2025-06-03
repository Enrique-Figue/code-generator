% Descripción: Este programa calcula el área de figuras geométricas (triángulo, rectángulo, círculo) mediante un menú interactivo.

function CalculadoraDeAreas
    disp('Calculadora de Áreas');
    disp('1. Triángulo');
    disp('2. Rectángulo');
    disp('3. Círculo');
    opcion = input('Seleccione una figura (1-3): ');
    
    switch opcion
        case 1
            base = validarEntrada('Ingrese la base del triángulo: ');
            altura = validarEntrada('Ingrese la altura del triángulo: ');
            area = 0.5 * base * altura;
            fprintf('Área del triángulo: %.2f\n', area);
            
        case 2
            largo = validarEntrada('Ingrese el largo del rectángulo: ');
            ancho = validarEntrada('Ingrese el ancho del rectángulo: ');
            area = largo * ancho;
            fprintf('Área del rectángulo: %.2f\n', area);
            
        case 3
            radio = validarEntrada('Ingrese el radio del círculo: ');
            area = pi * radio^2;
            fprintf('Área del círculo: %.2f\n', area);
            
        otherwise
            disp('Opción no válida');
    end
end

function valor = validarEntrada(mensaje)
    while true
        valor = input(mensaje);
        if isnumeric(valor) && valor > 0
            return;
        end
        disp('Error: Ingrese un valor numérico positivo');
    end
end