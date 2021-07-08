function z_scoring_example
    mu = -5;
    sig = 3;
    val = -6;

    x = linspace(-10, 10, 1000)';
    y1 = normpdf(x, mu, sig);
    y2 = normpdf(x, 0, 1);

    x_val = [val, val];
    x_val_z = ([val, val] - mu) / sig;
    y_val = [min([y1; y2]), max([y1; y2])];

    figure;
    plot(x, y1, 'b');
    hold on;
    plot(x, y2, 'r');
    plot(x_val, y_val, 'b');
    plot(x_val_z, y_val, 'r');
    hold off;

    legend({'arbitrary Gaussian', 'standard normal'});

    ax = gca;
    ax.FontSize = 28;
end