function [std_o,min_o,mean_o,max_o,range_o] = operations(user_array)
%%% this function will let the user calculate mean, std, max,min,range
%%% the user should give an array as an input to this function

    max_o=max(user_array);
    min_o=min(user_array);
    std_o=std(user_array);
    mean_o=mean(user_array);
    range_o=range(user_array);

end

