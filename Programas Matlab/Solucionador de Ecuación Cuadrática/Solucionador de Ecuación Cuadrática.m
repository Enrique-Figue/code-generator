disp('Bienvenido al Solucionador de Ecuaciones Cuadráticas.');
disp('Este programa resuelve ecuaciones de la forma ax² + bx + c = 0.');

% Solicitar coeficientes
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero. No es una ecuación cuadrática.');
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
D = b^2 - 4*a*c;

% Determinar tipo de raíces y mostrar resultados
if D > 0
    disp('La ecuación tiene dos raíces reales distintas:');
    x1 = (-b + sqrt(D)) / (2*a);
    x2 = (-b - sqrt(D)) / (2*a);
    fprintf('x1 = %.4f\nx2 = %.4f\n', x1, x2);
elseif D == 0
    disp('La ecuación tiene una raíz real repetida:');
    x = -b / (2*a);
    fprintf('x = %.4f\n', x);
else
    disp('La ecuación tiene dos raíces complejas conjugadas:');
    parte_real = -b / (2*a);
    parte_imaginaria = sqrt(abs(D)) / (2*a);
    fprintf('x1 = %.4f + %.4fi\nx2 = %.4f - %.4fi\n',...
            parte_real, parte_imaginaria, parte_real, parte_imaginaria);
end