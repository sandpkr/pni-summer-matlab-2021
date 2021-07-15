function linear_combination_of_functions
    m = 10;
    noise_std = 1;
    
    p = [0.5, 2]';
    
    % x is the input to our function
    x_vector = (0:1:25)';
    
    % the two components of our function
    sin_component = sin(x_vector);
    exponential_component = x_vector .* exp(-x_vector);
    
    % the deterministic part of our observation (add noise later)
    b_vector = p(1) * sin_component + p(2) * exponential_component;
    
    % A is the model, its the two components which we are linearly
    % combining by multiplying with the vector p
    A = repmat([sin_component, exponential_component], [m, 1]);
    
    b_mat = repmat(b_vector, [1, m]) + noise_std*randn(size(x_vector,1), m);

    b = b_mat(:);
    
    
    p_hat = A \ b;
    
    figure;
    subplot(1, 2, 1);
    scatter(repmat(x_vector, [m, 1]), b, 'LineWidth', 3);
    xlabel('x');
    ylabel('observed data');
    
    subplot(1, 2, 2);
    plot(x_vector, b_vector, 'LineWidth', 3);
    hold on;
    plot(x_vector, [sin_component, exponential_component]*p_hat, 'LineWidth', 3);
    hold off;
    legend({'true', 'reconstructed'})
    xlabel('x');
    ylabel('f(x)');
    ax = gca;
    ax.FontSize = 24;
end