function fit_linear_data
    data_in = load('linear_data.mat');
    
    x = data_in.x;
    y = data_in.y;
    
    p_hat = sum(x.*y) / sum(x.^2);
    
    fit_x = linspace(min(x), max(x), 100);
    fit_y = fit_x * p_hat;
    
    figure;
    scatter(x, y, 240);
    hold on;
    plot(fit_x, fit_y, 'LineWidth', 3);
    hold off;
    xlabel('voltage');
    ylabel('current');
    legend({'data', ['fit, slope =' num2str(p_hat)]});
    ax = gca;
    ax.FontSize = 24;
end