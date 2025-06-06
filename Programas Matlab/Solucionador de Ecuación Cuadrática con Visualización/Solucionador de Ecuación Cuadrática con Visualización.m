% Solicita coeficientes, calcula raíces y gráfica la función cuadrática
% Entrada interactiva de coeficientes
a = input('Ingrese coeficiente a (diferente de cero): ');
if a == 0
    error('El coeficiente cuadrático no puede ser cero');
end
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Cálculo del discriminante
discriminante = b^2 - 4*a*c;

% Cálculo de raíces con diferentes casos
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    tipo_raiz = 'reales y distintas';
elseif discriminante == 0
    raiz1 = -b/(2*a);
    raiz2 = raiz1;
    tipo_raiz = 'reales e iguales';
else
    real_part = -b/(2*a);
    imag_part = sqrt(abs(discriminante))/(2*a);
    raiz1 = complex(real_part, imag_part);
    raiz2 = complex(real_part, -imag_part);
    tipo_raiz = 'complejas conjugadas';
end

% Visualización de resultados
fprintf('\nResultados:\n');
fprintf('Discriminante: %.2f\n', discriminante);
fprintf('Las raíces son %s\n', tipo_raiz);
fprintf('Raíz 1: %s\n', num2str(raiz1));
fprintf('Raíz 2: %s\n\n', num2str(raiz2));

% Gráfico de la función cuadrática
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;
plot(x, y, 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('f(x)');
title(['Función Cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
hold on;
plot(real(raiz1), 0, 'ro', 'MarkerSize', 8);
plot(real(raiz2), 0, 'go', 'MarkerSize', 8);
legend('Función','Raíz 1','Raíz 2');
hold off;