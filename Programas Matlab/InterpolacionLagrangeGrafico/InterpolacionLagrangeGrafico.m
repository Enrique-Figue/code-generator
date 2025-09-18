% Descripción: Interpolación polinómica de Lagrange con gráfico comparativo
% Entrada: Puntos (x,y) del usuario
% Salida: Polinomio interpolante, gráfico de puntos y curva, error handling

function InterpolacionLagrangeGrafico
    try
        % Obtener puntos del usuario
        input_points = inputdlg({'Ingrese valores x (separados por coma):','Ingrese valores y (separados por coma):'}, 'Datos de entrada', [1 50; 1 50]);
        x = str2num(input_points{1});
        y = str2num(input_points{2});
        
        % Validar entrada
        if numel(x) ~= numel(y) || numel(x) < 2
            error('Número inválido de puntos. Se requieren pares (x,y)');
        end
        
        % Calcular polinomio de Lagrange
        syms t;
        n = length(x);
        polinomio = 0;
        
        for i = 1:n
            termino = y(i);
            for j = 1:n
                if j ~= i
                    termino = termino * (t - x(j))/(x(i) - x(j));
                end
            end
            polinomio = polinomio + termino;
        end
        
        % Simplificar y preparar para evaluación
        polinomio_simp = simplify(polinomio);
        f = matlabFunction(polinomio_simp);
        
        % Crear gráfico
        x_vals = linspace(min(x)-1, max(x)+1, 100);
        y_vals = f(x_vals);
        
        figure('Name','Interpolación Lagrange','NumberTitle','off');
        plot(x_vals, y_vals, 'b-', 'LineWidth', 1.5);
        hold on;
        plot(x, y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor','r');
        grid on;
        title(sprintf('Polinomio Interpolante: %s', char(vpa(polinomio_simp, 4))));
        xlabel('x');
        ylabel('y');
        legend('Polinomio Lagrange','Puntos datos', 'Location','best');
        
        % Mostrar resultados en consola
        disp('Polinomio interpolante de Lagrange:');
        disp(polinomio_simp);
        disp('Coeficientes numéricos:');
        disp(coeffs(polinomio_simp, 'All'));
        
    catch ME
        errordlg(ME.message, 'Error en los datos');
        return;
    end
end