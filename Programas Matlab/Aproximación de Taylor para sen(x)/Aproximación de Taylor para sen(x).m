% Descripción: Grafica la función sen(x) y su aproximación mediante la serie de Taylor de orden N
% Parámetros ajustables:
N = 5;              % Orden máximo del polinomio de Taylor
a = 0;              % Punto de expansión de la serie
x = linspace(-2*pi, 2*pi, 1000);  % Dominio de evaluación
fx = sin(x);        % Función original

% Calcula aproximación de Taylor
taylorSum = zeros(1, length(x));     % Inicializa acumulador
for k = 0:N
    coeficiente = (-1)^k / factorial(2*k + 1);
    termino = coeficiente .* (x - a).^(2*k + 1);
    taylorSum = taylorSum + termino; % Suma términos de la serie
end

% Configura gráfico comparativo
figure;
plot(x, fx, 'b', 'LineWidth', 2);        % Función original
hold on;
plot(x, taylorSum, 'r--', 'LineWidth', 1.5); % Aproximación
title('Aproximación de Taylor de sen(x)');
xlabel('x'); ylabel('f(x)');
legend('sen(x)', ['Taylor orden ' num2str(N)], 'Location', 'northwest');
grid on;
hold off;