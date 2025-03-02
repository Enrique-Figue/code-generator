% Descripción: Resuelve ecuaciones ax²+bx+c=0 y grafica la función cuadrática

% Solicitar coeficientes al usuario
a = input('Ingrese coeficiente a: ');
if a == 0
    error('No es ecuación cuadrática (a ≠ 0 requerido)');
end
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;
fprintf('\nDiscriminante: %.2f\n', discriminante);

% Determinar tipo de raíces y calcular soluciones
if discriminante > 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\nx1 = %.4f\nx2 = %.4f\n', x1, x2);
elseif discriminante == 0
    x = -b/(2*a);
    fprintf('Una raíz real doble:\nx = %.4f\n', x);
else
    real_part = -b/(2*a);
    imag_part = sqrt(-discriminante)/(2*a);
    fprintf('Raíces complejas:\nx1 = %.2f + %.2fi\nx2 = %.2f - %.2fi\n',...
            real_part, imag_part, real_part, imag_part);
end

% Configurar gráfico
x_vertice = -b/(2*a);
x_range = max(abs(x_vertice)*2, 5);  % Rango adaptativo para visualización
x_vals = linspace(x_vertice - x_range, x_vertice + x_range, 400);
y_vals = a*x_vals.^2 + b*x_vals + c;

figure;
plot(x_vals, y_vals, 'LineWidth', 1.5);
hold on;
plot([x_vertice - x_range, x_vertice + x_range], [0 0], 'k--');  % Eje X
title(['f(x) = ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x'); ylabel('f(x)'); grid on;

% Marcar raíces reales si existen
if discriminante >= 0
    roots = roots([a b c]);
    plot(real(roots), zeros(size(roots)), 'ro', 'MarkerSize', 8, 'LineWidth', 2);
end
legend('Función cuadrática', 'Eje x', 'Raíces', 'Location', 'best');
hold off;