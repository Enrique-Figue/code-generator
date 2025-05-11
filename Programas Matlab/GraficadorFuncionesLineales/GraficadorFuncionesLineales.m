% Descripción: Este programa grafica una función lineal de la forma y = mx + b, permitiendo al usuario ingresar los valores de m (pendiente) y b (intersección en y). Además, muestra información relevante de la función.
% Autor: MATLAB Helper
% Fecha: 2023-10-05

function GraficadorFuncionesLineales
    % Solicitar entrada del usuario
    m = input('Ingrese la pendiente (m): ');
    b = input('Ingrese la intersección en y (b): ');
    
    % Generar valores de x desde -10 a 10 con incrementos de 0.1
    x = -10:0.1:10;
    
    % Calcular valores de y
    y = m * x + b;
    
    % Crear figura nueva
    figure;
    
    % Graficar la función lineal
    plot(x, y, 'LineWidth', 2);
    grid on;
    title(['Función Lineal: y = ' num2str(m) 'x + ' num2str(b)]);
    xlabel('Eje X');
    ylabel('Eje Y');
    
    % Mostrar información de la función en la consola
    fprintf('\nInformación de la función:\n');
    fprintf('Pendiente (m): %.2f\n', m);
    fprintf('Intersección en Y: (0, %.2f)\n', b);
    fprintf('Ángulo de inclinación: %.2f grados\n', atand(m));
    
    % Añadir línea de intersección en y
    hold on;
    plot([0,0], [min(y), max(y)], 'k--', 'LineWidth', 1); % Eje Y
    plot(0, b, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Punto de intersección
    hold off;
    
    % Configurar límites de ejes
    axis([-10 10 min(y)-2 max(y)+2]);
    
    % Mostrar leyenda
    legend('Función Lineal', 'Ubicación Eje Y', 'Intersección en Y', 'Location', 'best');
end