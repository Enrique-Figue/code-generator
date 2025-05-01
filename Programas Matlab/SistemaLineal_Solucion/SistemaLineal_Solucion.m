% Descripción: Resuelve un sistema de ecuaciones lineales Ax = b utilizando el operador de barra invertida de MATLAB.
%   - Muestra la solución única si existe.
%   - Advertencia si el sistema no tiene solución única.

% Definir la matriz de coeficientes A y el vector de términos independientes b
A = [2 1; 1 -1];
b = [5; 1];

% Verificar si la matriz es invertible (determinante no cero)
if det(A) ~= 0
    % Resolver el sistema usando la división izquierda de MATLAB (A\b)
    x = A \ b;
    
    % Mostrar resultados
    disp('Solución única encontrada:');
    fprintf('x = %.2f\n', x(1));
    fprintf('y = %.2f\n', x(2));
else
    % Mensaje de error si la matriz es singular
    error('El sistema no tiene solución única: matriz de coeficientes singular.');
end