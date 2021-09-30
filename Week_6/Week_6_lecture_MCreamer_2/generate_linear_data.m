function generate_linear_data()
    slope = 1.5;
    m = 10;
    noise_std = 5;
    
    % x is the input to our function
    x_vector = (0:5:25)';
    
    % y = f(x) is the output of our function.
    y_vector = slope * x_vector;
    
    % imagine we measure our function multiple times with noise on each
    % measurment
    
    % copy the x vector m times
    x_mat = repmat(x_vector, [1, m]);
    
    % copy the y vector m times with noise
    y_mat = repmat(y_vector, [1, m]) + noise_std*randn(size(x_mat));

    % turn the matricies into columns so we can scatter them
    x = x_mat(:);
    y = y_mat(:);
    
    save('linear_data.mat', 'x', 'y');
end