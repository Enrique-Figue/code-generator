function resultado = calcularFactorial()
    try
        n = input('Por favor, ingrese un número entero no negativo: ');
        if ~isnumeric(n) || rem(n, 1) ~= 0 || n < 0
            error('Entrada no válida. Debe ser un número entero no negativo.');
        end
        resultado = 1;
        for i = 1:n
            resultado = resultado * i;
        end
        fprintf('El factorial de %d es: %d\n', n, resultado);
    catch ME
        fprintf('Error: %s\n', ME.message);
        resultado = [];
    end
end