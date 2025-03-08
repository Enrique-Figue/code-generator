% Este programa genera la aproximación de la serie de Taylor de la función seno
% alrededor de un punto dado y la compara gráficamente con la función real.
% El usuario ingresa el punto de expansión y el grado máximo de la serie.

clear all;
clc;

% Solicitar entrada del usuario
a = input('Ingrese el punto de expansión (a): ');
n = input('Ingrese el grado máximo de la serie de Taylor (n): ');

% Definir la función simbólica y calcular la serie de Taylor
syms x;
f = sin(x);
T = taylor(f, x, 'ExpansionPoint', a, 'Order', n+1);

% Convertir a funciones manejables para graficar
f_func = matlabFunction(f);
T_func = matlabFunction(T);

% Intervalo de graficación alrededor de 'a'
x_vals = linspace(a - 2*pi, a + 2*pi, 500);

% Graficar
figure;
hold on;
fplot(f_func, [a - 2*pi, a + 2*pi], 'b', 'LineWidth', 2);
fplot(T_func, [a - 2*pi, a + 2*pi], 'r--', 'LineWidth', 1.5);
scatter(a, f_func(a), 50, 'k', 'filled'); % Punto de expansión

% Configuración del gráfico
title(['Aproximación de Taylor de Grado ' num2str(n) ' para sin(x) en a = ' num2str(a)]);
xlabel('x');
ylabel('f(x)');
legend('sin(x)', ['Aproximación (Grado ' num2str(n) ')'], 'Punto de Expansión', 'Location', 'best');
grid on;
hold off;

% Mostrar la expresión de Taylor en la consola
disp('Expresión de la Aproximación de Taylor:');
disp(T);

% Mensaje adicional sobre el radio de convergencia
disp('Nota: La serie de Taylor para sen(x) converge para todo x real.');