% Este programa calcula y grafica la función sen(x) y sus aproximaciones
% mediante series de Taylor de orden variable en el intervalo [-2π, 2π].

% Configuración inicial
x = linspace(-2*pi, 2*pi, 200);  % Rango de evaluación
y = sin(x);                      % Función original
orden_max = 7;                   % Orden máximo de la serie
taylor_aprox = zeros(orden_max, length(x));  % Matriz para almacenar aproximaciones

% Cálculo de aproximaciones de Taylor
for n = 1:orden_max
    terminos = 2*n-1;  % Número de términos en la serie (1, 3, 5,...)
    taylor_aprox(n,:) = x;  % Inicializar con primer término
    
    for k = 1:2:terminos*2-1  # Corregido: iterar hasta terminos*2-1 para incluir todos los términos impares
        signo = (-1)^((k-1)/2);
        taylor_aprox(n,:) = taylor_aprox(n,:) + signo * x.^k / factorial(k);
    end
end

% Creación de la gráfica
figure;
plot(x, y, 'LineWidth', 2, 'DisplayName', 'sen(x)');  % Función original
hold on;

% Graficar cada aproximación con estilo diferente
colores = lines(orden_max);  % Paleta de colores
for n = 1:orden_max
    plot(x, taylor_aprox(n,:), '--',...
        'Color', colores(n,:),...
        'LineWidth', 1.5,...
        'DisplayName', sprintf('Orden %d', 2*n-1));
end

hold off;
title('Aproximación de Taylor para sen(x)');
xlabel('x');
ylabel('Valor');
legend('show', 'Location', 'northwest');
grid on;
axis tight;