function scatter_data_example
    data_in = load('linear_data.mat');
    
    x = data_in.x;
    y = data_in.y;
    
    figure;
    scatter(x, y, 240);
    ax = gca;
    ax.FontSize = 24;
    xlabel('voltage');
    ylabel('current');
end