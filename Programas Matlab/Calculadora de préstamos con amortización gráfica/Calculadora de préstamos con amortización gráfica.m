% Descripción: Calcula la cuota mensual de un préstamo y muestra gráficamente la distribución capital-interés

function calculadora_prestamo
    % Solicitar datos de entrada
    monto = input('Ingrese monto del préstamo: $');
    tasa_anual = input('Ingrese tasa anual (%): ')/100;
    plazo_anios = input('Ingrese plazo (años): ');
    
    % Calcular parámetros del préstamo
    tasa_mensual = tasa_anual/12;
    meses = plazo_anios * 12;
    
    % Calcular cuota mensual usando fórmula de amortización
    if tasa_mensual == 0  % Caso sin intereses
        cuota = monto/meses;
    else
        cuota = (monto * tasa_mensual) / (1 - (1 + tasa_mensual)^-meses);
    end
    
    % Mostrar resultados numéricos
    fprintf('\nCuota mensual: $%.2f\n', cuota);
    fprintf('Total a pagar: $%.2f\n', cuota * meses);
    
    % Preparar datos para tabla de amortización
    saldo = monto;
    capital = zeros(1, meses);
    interes = zeros(1, meses);
    
    % Calcular distribución capital-interés mensual
    for mes = 1:meses
        interes(mes) = saldo * tasa_mensual;
        capital(mes) = cuota - interes(mes);
        saldo = saldo - capital(mes);
    end
    
    % Graficar composición de pagos
    figure('Color', [1 1 1], 'Name', 'Distribución de Pagos');
    area([capital; interes]', 'LineWidth', 1.5);
    title('Composición Capital vs Interés del Préstamo');
    xlabel('N° de Cuota');
    ylabel('Monto ($)');
    legend('Capital', 'Interés', 'Location', 'northeast');
    grid on;
end