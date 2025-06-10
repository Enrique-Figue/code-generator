% Descripción: Calcula la integral definida de una función usando el método trapezoidal
% y grafica la función con los trapecios utilizados en la aproximación.
% Uso:
% 1. Ejecute el programa.
% 2. Ingrese la función (ej. x.^2 + 3*sin(x))
% 3. Ingrese límites de integración y número de trapecios
% 4. Vea el resultado y la visualización gráfica

clc;
close all;

% Solicitar parámetros al usuario
fprintf('Calculadora de Integral Definida\n');
funcion = input('Ingrese la función f(x) (use sintaxis MATLAB): ', 's');
a = input('Ingrese el límite inferior (a): ');
b = input('Ingrese el límite superior (b): ');
n = input('Ingrese el número de trapecios (n): ');

% Crear función manejable
f = str2func(['@(x) ' funcion]);

% Verificar orden de límites
if a > b
    [a, b] = deal(b, a);
    fprintf('Se intercambiaron los límites. Nuevo intervalo: [%.2f, %.2f]\n', a, b);
end

% Calcular paso y puntos de evaluación
h = (b - a)/n;
x = linspace(a, b, n+1);
y = f(x);

% Calcular integral por método trapezoidal
suma_internos = sum(y(2:end-1));  % Sumar todos los puntos internos
integral = (h/2) * (y(1) + 2*suma_internos + y(end));

% Crear figura
figure('Color','white','Name','Integral Trapezoidal');
hold on;

% Graficar función original
x_fino = linspace(a, b, 1000);
plot(x_fino, f(x_fino), 'b-', 'LineWidth', 1.5, 'DisplayName','Función');

% Graficar trapecios
for k = 1:n
    x_trap = [x(k) x(k) x(k+1) x(k+1)];
    y_trap = [0 y(k) y(k+1) 0];
    fill(x_trap, y_trap, 'r','FaceAlpha',0.2,'EdgeColor','r','DisplayName',...
        sprintf('Trapecio %d',k));
end

% Configurar gráfico
title(sprintf('Integral aproximada: $\\int_{%.2f}^{%.2f} %s\\,dx \\approx %.4f$',...
    a, b, strrep(funcion,'.',''), integral),'Interpreter','latex');
xlabel('x');
ylabel('f(x)');
legend('show','Location','best');
grid on;
axis tight;

% Mostrar resultado en consola
fprintf('\nResultado:\n');
fprintf('Integral de %s desde %.2f hasta %.2f\n', funcion, a, b);
fprintf('Número de trapecios: %d\n', n);
fprintf('Valor aproximado: %.6f\n', integral);