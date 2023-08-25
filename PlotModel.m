

% Plot the search map

function PlotModel(model)
    
    MAP_SIZE = model.MAPSIZE;
    x = 1:1:MAP_SIZE; y = 1:1:MAP_SIZE; % x & y from 0 to 20
    [X,Y] = meshgrid(x,y); % Replicate x & y to create a rectangular grid (X,Y) 
    clf('reset');
    h = pcolor(X,Y,model.Pmap);
    hold on;

    % Start position
    plot(model.xs+MAP_SIZE/2+0.5,model.ys+MAP_SIZE/2+0.5,'w-o',...
        'MarkerSize',3,...
        'MarkerFaceColor','w',...
        'LineWidth',1);
    xlabel('x (cell)');
    ylabel('y (cell)');
    
    % Set properties
    set(h,'linewidth',0.1);
    cb = colorbar; 
    cb.Ruler.Exponent = -3;
    gcaP=get(gca,'position');
    cbP=get(cb,'Position');
    cbP(3)=cbP(3)/2; % Change the colorbar width
    set(cb,'Position',cbP)
    set(gca,'position',gcaP)
    set(gcf,'position',[300,100,350,250]); % Set the map size
end