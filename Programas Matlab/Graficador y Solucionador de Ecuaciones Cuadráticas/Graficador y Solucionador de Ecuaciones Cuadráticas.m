% Descripción: Este programa grafica una función cuadrática y calcula sus raíces,
%              permitiendo explorar cómo los coeficientes afectan la parábola.

%% Entrada de coeficientes
a = input('Ingrese coeficiente cuadrático (a): ');
b = input('Ingrese coeficiente lineal (b): ');
c = input('Ingrese término independiente (c): ');

%% Cálculo del discriminante y raíces
discriminante = b^2 - 4*a*c;
raiz1 = (-b + sqrt(discriminante)) / (2*a);
raiz2 = (-b - sqrt(discriminante)) / (2*a);

%% Mostrar resultados numéricos
fprintf('\nRaíces de la ecuación:\n');
if discriminante > 0
    fprintf('Dos raíces reales:\n x1 = %.2f\n x2 = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    fprintf('Una raíz real doble:\n x = %.2f\n', raiz1);
else
    fprintf('Raíces complejas:\n x1 = %.2f + %.2fi\n x2 = %.2f - %.2fi\n', ...
            real(raiz1), imag(raiz1), real(raiz2), imag(raiz2));
end

%% Generación de puntos para la gráfica
x = linspace(raiz1-5, raiz1+5, 400); % Rango centrado en primera raíz
y = a*x.^2 + b*x + c;

%% Configuración de la gráfica
figure('Color', 'white', 'Name', 'Función Cuadrática');
plot(x, y, 'LineWidth', 2);
grid on;
title(sprintf('f(x) = %.1fx² + %.1fx + %.1f', a, b, c));
xlabel('x');
ylabel('f(x)');
hold on;

%% Destacar elementos importantes
plot(raiz1, 0, 'ro', 'MarkerSize', 8); % Raíz 1
plot(raiz2, 0, 'ro', 'MarkerSize', 8); % Raíz 2
plot(-b/(2*a), a*(-b/(2*a))^2 + b*(-b/(2*a)) + c, 'kx', 'MarkerSize', 10); % Vértice
legend('Función', 'Raíces', '', 'Vértice');

%% Información adicional en el gráfico
text(mean(x), max(y), sprintf('Discriminante: %.1f', discriminante), ...
     'HorizontalAlignment', 'center', 'BackgroundColor', 'white');