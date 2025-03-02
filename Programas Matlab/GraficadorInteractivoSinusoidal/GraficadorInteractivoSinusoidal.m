% Descripción: Programa interactivo para visualizar una señal sinusoidal con controles deslizantes que ajustan amplitud, frecuencia y fase en tiempo real.

function GraficadorInteractivoSinusoidal
    % Crear figura principal y configurar propiedades
    fig = figure('Name','Sinusoide Interactiva','NumberTitle','off','Position',[200 200 700 500]);
    
    % Crear ejes para la gráfica
    ax = axes('Parent',fig,'Position',[0.15 0.4 0.75 0.55]);
    title(ax, 'y = A * sin(2πfx + ϕ)');
    xlabel(ax, 'Tiempo (s)');
    ylabel(ax, 'Amplitud');
    grid(ax, 'on');
    hold(ax, 'on');
    
    % Parámetros iniciales
    x = linspace(0, 2, 1000);
    initialA = 1;
    initialF = 1;
    initialPhase = 0;
    
    % Graficar señal inicial
    plotHandle = plot(ax, x, initialA*sin(2*pi*initialF*x + initialPhase), 'LineWidth', 1.5);
    
    % Crear controles deslizantes (sliders)
    uicontrol('Style','text','Position',[60 340 100 20],'String','Amplitud (A):');
    sliderA = uicontrol('Style','slider','Position',[60 300 200 20],...
        'Min',0.1,'Max',5,'Value',initialA,'Callback',@updatePlot);
    
    uicontrol('Style','text','Position',[60 240 100 20],'String','Frecuencia (f):');
    sliderF = uicontrol('Style','slider','Position',[60 200 200 20],...
        'Min',0.5,'Max',5,'Value',initialF,'Callback',@updatePlot);
    
    uicontrol('Style','text','Position',[60 140 100 20],'String','Fase (ϕ):');
    sliderPhase = uicontrol('Style','slider','Position',[60 100 200 20],...
        'Min',0,'Max',2*pi,'Value',initialPhase,'Callback',@updatePlot);
    
    % Crear etiquetas de valores actuales
    textA = uicontrol('Style','text','Position',[280 300 100 20],'String',num2str(initialA));
    textF = uicontrol('Style','text','Position',[280 200 100 20],'String',num2str(initialF));
    textPhase = uicontrol('Style','text','Position',[280 100 100 20],'String',num2str(initialPhase));
    
    % Función de actualización de gráfica y valores
    function updatePlot(~,~)
        A = sliderA.Value;
        f = sliderF.Value;
        phase = sliderPhase.Value;
        
        % Actualizar curva
        set(plotHandle, 'YData', A*sin(2*pi*f*x + phase));
        
        % Actualizar etiquetas
        textA.String = sprintf('%.2f', A);
        textF.String = sprintf('%.2f', f);
        textPhase.String = sprintf('%.2f', phase);
    end
end