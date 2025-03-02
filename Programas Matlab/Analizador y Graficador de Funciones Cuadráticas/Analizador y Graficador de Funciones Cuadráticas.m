% Descripción: Calcula y grafica una función cuadrática, mostrando sus raíces,
%              vértice, dirección de apertura y discriminante. Ideal para
%              visualizar propiedades fundamentales de parábolas.

clc;
clear all;
close all;

% Solicitar coeficientes al usuario
a = input('Introduce el coeficiente cuadrático (a): ');
b = input('Introduce el coeficiente lineal (b): ');
c = input('Introduce el término independiente (c): ');

% Calcular propiedades clave
discriminante = b^2 - 4*a*c;          % Fórmula del discriminante
xv = -b/(2*a);                        % Coordenada x del vértice
yv = a*xv^2 + b*xv + c;               % Coordenada y del vértice

% Determinar dirección de apertura
direccion = 'hacia arriba';
if a < 0
    direccion = 'hacia abajo';
end

% Calcular raíces
if discriminante >= 0
    x1 = (-b + sqrt(discriminante))/(2*a);
    x2 = (-b - sqrt(discriminante))/(2*a);
    raices_str = sprintf('Raíces reales:\n x1 = %.2f\n x2 = %.2f', x1, x2);
else
    raices_str = 'No hay raíces reales (raíces complejas)';
end

% Crear vector x centrado en el vértice
x = linspace(xv-5, xv+5, 400);        % Rango de valores para graficar
y = a*x.^2 + b*x + c;                 % Evaluar función cuadrática

% Configurar gráfico
figure('Color','white');
plot(x,y,'LineWidth', 2);
hold on;
grid on;
title(['Función cuadrática: ' num2str(a) 'x² + ' num2str(b) 'x + ' num2str(c)]);
xlabel('x');
ylabel('y');

% Marcar vértice
plot(xv, yv, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
text(xv, yv+0.5, [' Vértice (' num2str(xv,'%.2f') ', ' num2str(yv,'%.2f') ')'], 'Color', 'red');

% Añadir información de propiedades
dim = [0.15 0.6 0.2 0.3];
str = {['Discriminante: ' num2str(discriminante)],...
       ['Dirección: ' direccion],...
       raices_str};
annotation('textbox',dim,'String',str,'FitBoxToText','on','BackgroundColor','#E0E0E0');

% Ajustar vista gráfica
axis([xv-5 xv+5 yv-5 yv+5]);  % Ventana centrada en el vértice
legend('Función','Ubicación del vértice', 'Location','best');
hold off;