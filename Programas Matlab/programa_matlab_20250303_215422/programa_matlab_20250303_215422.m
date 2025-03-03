% Analizador de Funcion Cuadratica: Grafica, Raices y Area
% Este programa analiza una función cuadrática definida por coeficientes.
% Genera su gráfica, calcula raíces y área bajo la curva en un intervalo.

% Definir coeficientes de la función cuadrática ax² + bx + c
a = 1;
b = -3;
c = 2;

% Definir intervalo para el análisis
x_inicio = 0;
x_fin = 3;

% Crear figura con dos subplots
figure;

% Subplot 1: Gráfica de la función y sus raíces
subplot(2,1,1);
% Generar puntos para la gráfica
x = linspace(x_inicio, x_fin, 1000);
y = a*x.^2 + b*x + c;
plot(x, y, 'LineWidth', 1.5);
grid on;
title(['Funcion: ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)]);
xlabel('x');
ylabel('f(x)');
hold on;

% Calcular y marcar raíces
raices = roots([a b c]);
raices_reales = raices(imag(raices) == 0);
plot(raices_reales, zeros(size(raices_reales)), 'ro', 'MarkerSize', 8);
legend('Función', 'Raíces reales', 'Location', 'Best');
hold off;

% Subplot 2: Área bajo la curva usando integral
subplot(2,1,2);
% Calcular integral numérica
area = integral(@(x) a*x.^2 + b*x + c, x_inicio, x_fin);

% Graficar área sombreada
x_area = linspace(x_inicio, x_fin, 100);
y_area = a*x_area.^2 + b*x_area + c;
area(x_area, y_area, 'FaceColor', [0.8 0.9 0.8]);
grid on;
title(['Área bajo la curva: ', num2str(area, '%.2f')]);
xlabel('x');
ylabel('Área acumulada');

% Ajustar espaciado entre subplots
set(gcf, 'Position', [100 100 800 600]);