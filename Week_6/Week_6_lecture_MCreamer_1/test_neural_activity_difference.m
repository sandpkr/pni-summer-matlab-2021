function p = test_neural_activity_difference()
    % Assume you are measuring the activity of two neurons and you want to
    % know if they have different means

    % We will:
    % Load in the data
    % Calculate the p value for how likely it is that the two neurons
    % actually have the same mean
    
    %% Arguments
    % n is the number of times we measure from the neuron
    n = 100;
    % mu and sig are the true mean / standard deviation of the neurons
    % response after the cue. We only know this because we are generating
    % synthetic data
    mu1 = 2;
    mu2 = 4;
    sig = 5;
    
    %% Load in the data
    % For this exercise we will generate the data rather than load it.
    % Generating and testing on synthetic data is crucial because only for
    % synthetic data do you have access to ground truth and can make sure
    % your analysis is written properly.
    neuron1_activity = randn(n, 1)*sig + mu1;
    neuron2_activity = randn(n, 1)*sig + mu2;
    
    %% calculate the p value
    % MATLAB has many built in functions that can perform complex
    % calculations -like p testing- without you having to write them
    % yourself
    [~, p] = ttest2(neuron1_activity, neuron2_activity);
    
    figure;
    histogram(neuron1_activity);
    hold on;
    histogram(neuron2_activity);
    hold off;
    ylabel('probability density');
    legend({'neuron activity 1', 'neuron activity 2'});
end