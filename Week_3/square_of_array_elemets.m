%%%% calculate squares of elements of an array using for loop
clear
clc

array=[-2 5 3 -1 0 6 10 -4];

for i=1:8
    square_num=array(1,i)^2;
%     disp(square_num)
end


for i=1:8
    square_array(1,i)=array(1,i)^2;
%     disp(square_num)
end

two_d_matrix=[2 -3 -4 6; 3 2 -5 -2; 3 2 0 1];

for i=1:3
    for j=1:4
    two_d_square_array(i,j)=two_d_matrix(i,j).^2;
    end
end

two_d_matrix
two_d_square_array