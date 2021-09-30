function p = test_neural_activity_change()
    % Assume you are measuring the activity of a neuron in response to an
    % external cue
    % Every time you present the cue, you record the activity of the neuron
    % over some window of time
    % The neuron has a baseline activity of 0 and you want to test if the
    % cue increases the neuron's response on average.

    % We will:
    % Load in the data
    % Calculate the p value for how likely the data is to have come from a
    % normal distribution with mean 0
    
    %% Arguments
    % n is the number of times we present the cue and measure from the
    % neuron
    n = 100;
    % mu and sig are the true mean / standard deviation of the neurons
    % response after the cue. We only know this because we are generating
    % synthetic data
    mu = 2.5;
    sig = 3;
    
    %% Load in the data
    % For this exercise we will generate the data rather than load it.
    % Generating and testing on synthetic data is crucial because only for
    % synthetic data do you have access to ground truth and can make sure
    % your analysis is written properly.
    neural_activity = randn(n, 1)*sig + mu;
    
    %% calculate the p value
    % MATLAB has many built in functions that can perform complex
    % calculations -like p testing- without you having to write them
    % yourself
    [~, p] = ttest(neural_activity);
    
    x = linspace(min(neural_activity), max(neural_activity), 100);
    y = normpdf(x, mean(neural_activity), std(neural_activity));
    figure;
    histogram(neural_activity, 'Normalization', 'pdf');
    hold on;
    plot(x,y);
    hold off;
    ylabel('probability density');
end