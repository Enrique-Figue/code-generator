% Descripción: Este programa resuelve una ecuación cuadrática ax² + bx + c = 0,
% muestra sus raíces y grafica la función en el dominio [-10, 10]

% Solicitar coeficientes al usuario
a = input('Ingrese coeficiente a: ');
b = input('Ingrese coeficiente b: ');
c = input('Ingrese coeficiente c: ');

% Calcular discriminante
discriminante = b^2 - 4*a*c;

% Mostrar ecuación ingresada
fprintf('\nEcuación: %.2fx² + %.2fx + %.2f = 0\n', a, b, c);

% Calcular y mostrar raíces
if discriminante > 0
    raiz1 = (-b + sqrt(discriminante))/(2*a);
    raiz2 = (-b - sqrt(discriminante))/(2*a);
    fprintf('Dos raíces reales:\n  x1 = %.2f\n  x2 = %.2f\n', raiz1, raiz2);
elseif discriminante == 0
    raiz = -b/(2*a);
    fprintf('Una raíz real doble:\n  x = %.2f\n', raiz);
else
    parte_real = -b/(2*a);
    parte_imag = sqrt(-discriminante)/(2*a);
    fprintf('Dos raíces complejas:\n  x1 = %.2f + %.2fi\n  x2 = %.2f - %.2fi\n',...
            parte_real, parte_imag, parte_real, parte_imag);
end

% Crear vector x y calcular y correspondiente
x = linspace(-10, 10, 400);
y = a*x.^2 + b*x + c;

% Graficar la función cuadrática
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(xlim, [0 0], 'k--'); % Eje x
plot([0 0], ylim, 'k--'); % Eje y
title('Gráfico de la función cuadrática');
xlabel('x');
ylabel('f(x)');
grid on;

% Marcar raíces reales si existen
if discriminante >= 0
    raices = roots([a b c]);
    plot(raices, zeros(size(raices)), 'ro', 'MarkerSize', 8);
    legend('Función cuadrática', 'Ejes', 'Raíces');
else
    legend('Función cuadrática', 'Ejes');
end
hold off;