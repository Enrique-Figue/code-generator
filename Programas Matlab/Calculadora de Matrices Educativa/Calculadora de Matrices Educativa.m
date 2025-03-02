% Este programa solicita una matriz cuadrada, calcula determinante, traza, inversa (si existe) y autovalores.

matrix = input('Ingrese una matriz cuadrada (ej: [1 2; 3 4]): ');
[fil, col] = size(matrix);

% Verificar matriz cuadrada
if fil ~= col
    error('Error: La matriz debe ser cuadrada');
end

% Resultados básicos
disp('------------------------------------');
disp(['Tamaño: ', num2str(fil), 'x', num2str(col)]);
disp(['Determinante: ', num2str(det(matrix))]);
disp(['Traza: ', num2str(trace(matrix))]);

% Cálculo de inversa con manejo de errores
try
    inversa = inv(matrix);
    disp('Matriz inversa:');
    disp(inversa);
catch
    disp('La matriz es singular (no invertible)');
end

% Cálculo de autovalores
disp('Autovalores:');
disp(eig(matrix));