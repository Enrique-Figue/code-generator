% Descripción: Este programa permite al usuario ingresar dos frecuencias para generar una señal compuesta,
%              visualizar la señal en el dominio del tiempo y su transformada de Fourier, demostrando
%              conceptos básicos de procesamiento de señales.

function FourierAnalyzer()
    % Crear figura principal y componentes de la interfaz
    fig = figure('Name','Analizador de Fourier', 'NumberTitle','off', 'Position',[100 100 800 600]);
    
    % Controles deslizantes para frecuencias
    uicontrol('Style','text', 'Position',[20 550 150 20], 'String','Frecuencia 1 (Hz):');
    slider1 = uicontrol('Style','slider', 'Position',[20 520 150 20], 'Min',1, 'Max',200, 'Value',10);
    uicontrol('Style','text', 'Position',[20 490 150 20], 'String','Frecuencia 2 (Hz):');
    slider2 = uicontrol('Style','slider', 'Position',[20 460 150 20], 'Min',1, 'Max',200, 'Value',50);
    
    % Botón de actualización
    btn = uicontrol('Style','pushbutton', 'Position',[20 400 150 30], 'String','Calcular Espectro',...
           'Callback',@(src,event)updatePlot());
    
    % Ejes para gráficos
    ax1 = subplot(2,1,1); title(ax1,'Dominio del Tiempo');
    ax2 = subplot(2,1,2); title(ax2,'Dominio de la Frecuencia');
    
    % Parámetros de la señal
    fs = 1000;      % Frecuencia de muestreo (Hz)
    t = 0:1/fs:1;   % Vector tiempo (1 segundo)
    
    % Función de actualización de gráficos
    function updatePlot()
        % Obtener valores actuales de los sliders
        f1 = slider1.Value;
        f2 = slider2.Value;
        
        % Generar señal compuesta
        señal = sin(2*pi*f1*t) + 0.5*sin(2*pi*f2*t);
        
        % Calcular FFT
        L = length(señal);
        Y = fft(señal);
        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        f = fs*(0:(L/2))/L;
        
        % Actualizar gráficos
        plot(ax1, t, señal);
        xlabel(ax1, 'Tiempo (s)'); ylabel(ax1, 'Amplitud');
        title(ax1, sprintf('Señal Temporal: %dHz + %dHz', round(f1), round(f2)));
        
        plot(ax2, f, P1);
        xlabel(ax2, 'Frecuencia (Hz)'); ylabel(ax2, '|Amplitud|');
        title(ax2, 'Espectro de Frecuencia');
        xlim(ax2, [0 200]);  % Mostrar hasta frecuencia Nyquist (500Hz)
        grid(ax2, 'on');
    end

    % Configuración inicial
    updatePlot();  % Generar primera gráfica
    movegui(fig, 'center');  % Centrar la ventana
end