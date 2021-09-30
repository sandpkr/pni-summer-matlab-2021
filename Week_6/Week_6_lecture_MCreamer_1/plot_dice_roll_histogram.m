function plot_dice_roll_histogram
    % the number of draws to take from the number generator
    n = 100;
    
    % roll the dice
    % draw random integers from 1 to 6
    rolls = randi([1, 6], n, 1);

    % get a line of the expected probability
    x = [1, 6];
    expected_probability = [1/6, 1/6];
    expected_counts = expected_probability*n;
    
    % plot a histogram of the rolls
    figure;
    subplot(1,2,1);
    histogram(rolls, 0.5:6.5, 'Normalization', 'count');
    hold on;
    plot(x, expected_counts);
    hold off;
    xlabel('roll values');
    ylabel(['counts (n = ' num2str(n) ')']);
    
    subplot(1,2,2);
    histogram(rolls, 0.5:6.5, 'Normalization', 'probability');
    hold on;
    plot(x, expected_probability);
    hold off;
    xlabel('roll values');
    ylabel('probability');
end