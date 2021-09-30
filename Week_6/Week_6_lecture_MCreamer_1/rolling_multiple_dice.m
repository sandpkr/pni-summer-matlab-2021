function rolling_multiple_dice
    % the number of draws to take from the number generator
    n = 1000;
    % number of dice to roll
    m = 1;
    sides_of_the_dice = 6;
    
    % roll the dice
    % draw random integers from 1 to 6
    rolls = randi([1, sides_of_the_dice], n, m);

    summed_rolls = sum(rolls, 2);
    
    % plot a histogram of the rolls
    figure;
    histogram(summed_rolls, 'Normalization', 'pdf');
    xlabel('roll values');
    ylabel('probability density');
    
    if m >= 20
        x = linspace(min(summed_rolls), max(summed_rolls), 100);
        y = normpdf(x, mean(summed_rolls), std(summed_rolls));
        hold on;
        plot(x, y);
        hold off;
    end
end