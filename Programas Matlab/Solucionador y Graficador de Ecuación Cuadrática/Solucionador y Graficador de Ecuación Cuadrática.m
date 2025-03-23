% Este programa resuelve la ecuación ax² + bx + c = 0, mostrando sus raíces y opcionalmente graficando la función.

disp('=== Solucionador de Ecuación Cuadrática ===');
disp('Resuelve ax² + bx + c = 0 y grafica la función.');

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('Error: a no puede ser cero.');  % Asegura que sea ecuación cuadrática
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante calculado: %.2f\n', discriminante);

% Determinar y mostrar raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n  Raíz 1: %.2f\n  Raíz 2: %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n  Raíz: %.2f\n', raiz);
else
    parteReal = -b/(2*a);
    parteImag = sqrt(-discriminante)/(2*a);
    fprintf('Raíces complejas conjugadas:\n  Raíz 1: %.2f + %.2fi\n  Raíz 2: %.2f - %.2fi\n', parteReal, parteImag, parteReal, parteImag);
end

% Opción para graficar
graf = input('\n¿Graficar la función? (s/n): ', 's');
if lower(graf) == 's'
    x = linspace(-10, 10, 400);  % Rango de x para la gráfica
    y = a*x.^2 + b*x + c;       % Evaluar la función
    
    figure;
    plot(x, y, 'b-', 'LineWidth', 1.5);  % Graficar función
    hold on;
    title('Gráfico de la Función Cuadrática');
    xlabel('x');
    ylabel('f(x)');
    grid on;
    
    if discriminante >= 0  % Añadir raíces reales al gráfico
        if discriminante == 0
            plot(raiz, 0, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
        else
            plot([raiz1, raiz2], [0, 0], 'ro', 'MarkerSize', 8, 'LineWidth', 2);
        end
    end
    legend('Función cuadrática', 'Raíces', 'Location', 'Best');
    hold off;
end