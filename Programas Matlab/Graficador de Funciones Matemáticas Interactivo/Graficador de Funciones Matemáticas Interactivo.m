% Programa interactivo para graficar funciones matemáticas básicas con parámetros personalizables

clc;
clear all;
close all;

disp('Bienvenido al graficador interactivo de funciones');
disp('-----------------------------------------------');

while true
    % Menú de selección
    disp('Seleccione el tipo de función:');
    disp('1. Función Lineal (y = ax + b)');
    disp('2. Función Cuadrática (y = ax² + bx + c)');
    disp('3. Función Senoidal (y = a*sin(bx))');
    disp('4. Salir');
    opcion = input('Ingrese su elección (1-4): ');
    
    % Salir del programa
    if opcion == 4
        disp('¡Hasta luego!');
        break;
    end
    
    % Configuración de parámetros
    switch opcion
        case 1
            a = input('Ingrese coeficiente a: ');
            b = input('Ingrese coeficiente b: ');
            x = linspace(-10, 10, 100);
            y = a*x + b;
            ecuacion = ['y = ', num2str(a), 'x + ', num2str(b)];
        case 2
            a = input('Ingrese coeficiente a: ');
            b = input('Ingrese coeficiente b: ');
            c = input('Ingrese coeficiente c: ');
            x = linspace(-10, 10, 100);
            y = a*x.^2 + b*x + c;
            ecuacion = ['y = ', num2str(a), 'x² + ', num2str(b), 'x + ', num2str(c)];
        case 3
            a = input('Ingrese amplitud (a): ');
            b = input('Ingrese frecuencia (b): ');
            x = linspace(0, 4*pi, 200);
            y = a*sin(b*x);
            ecuacion = ['y = ', num2str(a), 'sin(', num2str(b), 'x)'];
        otherwise
            disp('Opción inválida. Intente nuevamente.');
            continue;
    end
    
    % Visualización de resultados
    figure;
    plot(x, y, 'LineWidth', 2);
    grid on;
    title(ecuacion);
    xlabel('x');
    ylabel('y');
    axis([min(x) max(x) min(y)-1 max(y)+1]);
    legend('Función seleccionada', 'Location', 'best');
end