function plot_distribution_of_means
    % We will use this function to plot a Gaussian distribution, and plot
    % the distribution of sample means of that Gaussian
    
    % the number of samples from the Gaussian
    n = 20;
    % the number of times we repeat our experiment at that n
    m = 1000;
    
    % sample from our distribution
    mu = 1;
    sig = 3;
    a = randn(n, m)*sig + mu;
    
    % standard error of the mean
    sem = sig / sqrt(n);
    
    % calculate the sample means
    sample_means = mean(a, 1);
    
    % generate the shape of the distribution we're sampling
    x = linspace(min(a(:)), max(a(:)), 100)';
    sample_dist = normpdf(x, mu, sig);
    sample_mean_dist = normpdf(x, mu, sem);
    
    figure;
    histogram(a(:,1), 'Normalization', 'pdf');
    
    figure;
    histogram(sample_means, 'Normalization', 'pdf');
    hold on;
    plot(x, sample_dist);
    plot(x, sample_mean_dist);
    hold off;
    legend({'sample means', 'sampling distribution', 'expected distribution of means'});
    ylabel('probability density');
end