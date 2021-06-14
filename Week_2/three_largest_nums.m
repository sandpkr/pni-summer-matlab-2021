function [num1,num2,num3] = three_largest_nums(array)
% gives the three largest numbers in an array. Users must give atleast 3
% element array
    
    if size(array,2)<3
        error('Please give atleast three elements');
    end
    
    unique_elements=unique(array);
    sorted_array=sort(unique_elements,'descend');
    num1=sorted_array(1);
    num2=sorted_array(2);
    num3=sorted_array(3);
end

