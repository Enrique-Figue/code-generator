% Descripción: Solicita un número entero positivo N y muestra la secuencia Fibonacci hasta el N-ésimo término.
% Características: Incluye validación de entrada y explicaciones en mensajes emergentes.

function secuencia_fibonacci()
    % Solicitar entrada al usuario
    entrada = inputdlg('Ingrese un número entero positivo N:', 'Generador Fibonacci', 1);
    
    % Validar la entrada
    if isempty(entrada)
        errordlg('Operación cancelada.', 'Error');
        return;
    end
    
    n = str2double(entrada{1});
    if isnan(n) || n <= 0 || floor(n) ~= n
        errordlg('Entrada no válida. Ingrese un número entero positivo.', 'Error');
        return;
    end
    
    % Generar secuencia Fibonacci
    fib = zeros(1, n);
    fib(1) = 1;
    if n >= 2
        fib(2) = 1;
        for i = 3:n
            fib(i) = fib(i-1) + fib(i-2);
        end
    end
    
    % Crear mensaje de salida con explicación
    explicacion = sprintf(['La secuencia Fibonacci para N = %d se genera mediante:\n' ...
                           'F(1) = 1\nF(2) = 1\nF(k) = F(k-1) + F(k-2) para k > 2\n\nResultado: '], n);
    resultado = strjoin(string(fib), ', ');
    msgbox([explicacion resultado], 'Secuencia Generada');
end