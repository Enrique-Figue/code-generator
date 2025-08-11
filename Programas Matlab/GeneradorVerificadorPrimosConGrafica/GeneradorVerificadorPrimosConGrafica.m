% Descripción: Este programa verifica si un número ingresado es primo,
% muestra todos los primos hasta ese número y grafica su distribución.
% Además incluye funciones auxiliares y documentación interna.

function [] = GeneradorVerificadorPrimosConGrafica()
    % Solicitar entrada al usuario
    n = input('Ingrese un número entero mayor que 1: ');
    
    % Validar entrada
    if ~isnumeric(n) || n <= 1 || rem(n,1) ~= 0
        error('Debe ingresar un número entero mayor que 1');
    end
    
    % Verificar primalidad
    if esPrimo(n)
        fprintf('%d es un número primo\n', n);
    else
        fprintf('%d no es un número primo\n', n);
    end
    
    % Generar y mostrar lista de primos hasta n
    primos = obtenerPrimos(n);
    fprintf('Números primos hasta %d:\n', n);
    disp(primos);
    
    % Graficar distribución de primos
    figure;
    plot(primos, 'ro-', 'MarkerFaceColor', 'b');
    title(sprintf('Distribución de Números Primos hasta %d', n));
    xlabel('Índice');
    ylabel('Valor primo');
    grid on;
end

function resultado = esPrimo(num)
    % Función auxiliar para verificar si un número es primo
    % Input: num - número a verificar
    % Output: resultado - booleano (true si es primo)
    
    if num < 2
        resultado = false;
        return
    end
    for i = 2:sqrt(num)
        if rem(num, i) == 0
            resultado = false;
            return
        end
    end
    resultado = true;
end

function primos = obtenerPrimos(limite)
    % Función auxiliar que genera todos los primos <= limite
    % Utiliza el método de la criba de Eratóstenes
    % Input: limite - número máximo a considerar
    % Output: primos - lista de números primos
    
    candidatos = 2:limite;
    primos = [];
    while ~isempty(candidatos)
        actual = candidatos(1);
        primos(end+1) = actual; %#ok<AGROW>
        candidatos = candidatos(mod(candidatos, actual) ~= 0);
    end
end