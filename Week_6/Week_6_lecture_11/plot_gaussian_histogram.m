function plot_gaussian_histogram
    % the number of draws to take from the number generator
    n = 1000;
    gaus_mean = 0;
    gaus_std = 1;
    
    % roll the dice
    % draw random integers from 1 to 6
    rolls = randn(n, 1)*gaus_std + gaus_mean;

    % get a line of the expected probability
    x = -3:0.1:3;
    expected_probability = normpdf(x, gaus_mean, gaus_std);
    
    % plot a histogram of the rolls
    figure;
    histogram(rolls, 'Normalization', 'pdf');
    hold on;
    plot(x, expected_probability);
    hold off;
    xlabel('roll values');
    ylabel('probability density');
end