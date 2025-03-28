function raiz = calculadora_raices()
    % Interfaz inicial para el usuario
    disp('Calculadora de raíces y graficador de funciones');
    disp('Ingrese una función en términos de x, ej: x^2 - 4, sin(x), exp(x)-2');
    f = input('Función: ', 's');
    
    % Crear función anónima y gráfico
    try
        fh = str2func(['@(x)' f]);
        figure;
        ezplot(fh);
        title(['Función: ' f]);
        grid on;
        hold on;
    catch
        error('Error: Formato de función no válido');
    end
    
    % Entrada de intervalo con validación
    while true
        a = input('Ingrese límite inferior del intervalo: ');
        b = input('Ingrese límite superior del intervalo: ');
        if fh(a)*fh(b) < 0
            break;
        else
            disp('El intervalo no contiene raíz (no hay cambio de signo). Intente nuevamente.');
        end
    end
    
    % Parámetros del método de bisección
    tol = 1e-6;
    max_iter = 100;
    iter = 0;
    
    % Algoritmo de bisección
    while (b - a)/2 > tol && iter < max_iter
        c = (a + b)/2;
        if fh(c) == 0
            break;
        elseif fh(a)*fh(c) < 0
            b = c;
        else
            a = c;
        end
        iter = iter + 1;
    end
    raiz = (a + b)/2;
    
    % Mostrar resultados
    fprintf('Raíz aproximada: %.6f\n', raiz);
    fprintf('Iteraciones realizadas: %d\n', iter);
    plot(raiz, fh(raiz), 'ro', 'MarkerSize', 8);
    legend('Función', 'Raíz encontrada');
    hold off;
    
    % Opción para nueva búsqueda
    if input('¿Desea analizar otra función? (1=Si/0=No): ') == 1
        close all;
        calculadora_raices();
    else
        disp('¡Hasta luego!');
    end
end