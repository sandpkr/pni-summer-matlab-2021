function [after_mult,after_div,max_mult] = mult_div_arrays(arr1,arr2)
%%%% this function wil do element by element multiplication of 2 arrays
%%%% given by the user

after_mult=arr1.*arr2;
after_div=arr1./arr2;

%%% i also want the ability to find the max of after_mult array
%%% I am goign to use the operations funtion whihc I wrote previously

[~,~,~,max_mult,~]=operations(after_mult);

end

