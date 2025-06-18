% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% calcula sus raíces y grafica la función, mostrando propiedades educativas.

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente cuadrático (a): ');
b = input('Ingrese el coeficiente lineal (b): ');
c = input('Ingrese el término independiente (c): ');

% Verificar que sea ecuación cuadrática
if a == 0
    error('El coeficiente "a" no puede ser cero para una ecuación cuadrática');
end

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante: %.2f\n', discriminante);

% Calcular raíces según el discriminante
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales distintas:\n  x₁ = %.2f\n  x₂ = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n  x = %.2f\n', raiz);
else
    realPart = -b/(2*a);
    imagPart = sqrt(abs(discriminante))/(2*a);
    fprintf('Raíces complejas conjugadas:\n  x₁ = %.2f + %.2fi\n  x₂ = %.2f - %.2fi\n', realPart, imagPart, realPart, imagPart);
end

% Crear vector x centrado en el vértice de la parábola
verticeX = -b/(2*a);
x = linspace(verticeX-5, verticeX+5, 400);
y = a*x.^2 + b*x + c;

% Graficar la función cuadrática
figure;
plot(x, y, 'LineWidth', 2);
hold on;
grid on;
title(['Función Cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x');
ylabel('f(x)');

% Marcar raíces reales si existen
if discriminante >= 0
    if discriminante > 0
        plot(raiz1, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Raíces');
        plot(raiz2, 0, 'ro', 'MarkerSize', 8);
    else
        plot(raiz, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Raíz doble');
    end
    legend('show');
end

% Mostrar vértice y discriminante en gráfico
text(verticeX, a*verticeX^2 + b*verticeX + c,...
    sprintf(' Vértice (%.2f, %.2f)', verticeX, a*verticeX^2 + b*verticeX + c),...
    'VerticalAlignment','bottom');