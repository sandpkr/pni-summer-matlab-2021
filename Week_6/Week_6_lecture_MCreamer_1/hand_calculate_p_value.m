function hand_calculate_p_value
    % Here we'll do the step by step for calculating a one-sample
    % t-statistic to compare against a mean of 2.
    
    % generate the data to test
    expected_mean = 2;
    n = 50;
    mu = 1;
    sig = 4;
    data = randn(n, 1)*sig + mu;
    
    data_mean = mean(data);
    sem = std(data) / sqrt(n);
    
    % calculate the t-statistic
    t_stat = (data_mean - expected_mean) / sem;
    degrees_of_freedom = n-1;
    p_hand = 2*(1-tcdf(abs(t_stat), degrees_of_freedom));
    
    % check our calculation against the built in function
    [~, p_built_in] = ttest(data - expected_mean);
    
    % calculate the expected Gaussian we draw from and the t distribution
    % for the sample means
    x = linspace(min(data), max(data), 100);
    y_gauss_dist = normpdf(x, mean(data), std(data));
    y_t_dist = tpdf(x, n-1);
    
    % plot the histogram of the data with the expected gaussian over it
    figure;
    histogram(data, 'Normalization', 'pdf');
    hold on;
    plot(x, y_gauss_dist);
    hold off;
    ylabel('probability density');
    ax = gca;
    ax.FontSize = 28;
    
    % plot the t-distribution with the left and right tails of the
    % t-statistic
    figure;
    t_x_pos = [t_stat, t_stat];
    t_y_pos = [min(y_t_dist), max(y_t_dist)];
    plot(x, y_t_dist);
    hold on;
    % plot line at the left and right tails of the distribution
    plot(-abs(t_x_pos), t_y_pos, 'k');
    plot(abs(t_x_pos), t_y_pos, 'k');
    hold off;
    ylabel('probability density');
    ax = gca;
    ax.FontSize = 28;
    
    disp(['Our calculated p value is: ' num2str(p_hand)]);
    disp(['MATLABs calculated p value is: ' num2str(p_built_in)]);
end