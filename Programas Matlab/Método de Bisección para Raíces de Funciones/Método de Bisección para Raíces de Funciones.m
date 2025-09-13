% Descripción: Encuentra una raíz de la función f(x) en el intervalo [a,b] usando el método de bisección.
%   Incluye visualización gráfica de la función y la raíz encontrada.
%   Funciona para funciones continuas que cruzan el eje x en el intervalo dado.

clc; clear; close all;

% Definir función de ejemplo (modificable)
f = @(x) x^3 - 2*x - 5;  % Función a analizar

% Parámetros del método
a = 2;          % Extremo izquierdo del intervalo inicial
b = 3;          % Extremo derecho del intervalo inicial
tolerancia = 1e-6;  % Precisión deseada
max_iter = 100;     % Número máximo de iteraciones

% Verificar teorema de Bolzano
if f(a) * f(b) >= 0
    error('La función no cambia de signo en el intervalo [a,b]. Elija nuevos valores.');
end

% Inicializar variables
iter = 0;
aproximacion = (a + b)/2;

% Algoritmo de bisección
while (b - a)/2 > tolerancia && iter < max_iter
    c = (a + b)/2;
    
    if f(c) == 0
        break;  % Encontramos la raíz exacta
    elseif f(a) * f(c) < 0
        b = c;  % La raíz está en el subintervalo izquierdo
    else
        a = c;  % La raíz está en el subintervalo derecho
    end
    
    iter = iter + 1;
    aproximacion = (a + b)/2;
end

% Mostrar resultados
fprintf('Raíz encontrada: %.6f\n', aproximacion);
fprintf('Iteraciones realizadas: %d\n', iter);
fprintf('Valor en la raíz: %.2e\n', f(aproximacion));

% Visualización gráfica
x = linspace(a-1, b+1, 1000);
y = f(x);

figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;
plot(aproximacion, f(aproximacion), 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
hline = refline(0,0);
hline.Color = 'k';
xlabel('x');
ylabel('f(x)');
title('Método de Bisección: Raíz encontrada');
legend('Función', 'Raíz aproximada', 'Eje x', 'Location', 'northwest');
grid on;