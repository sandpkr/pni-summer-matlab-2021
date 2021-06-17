%%% adding the elements of two matrices element by element using for loop

clear
clc

mat_1=randi([-6 6],3,4)
mat_2=randi([-6 6],3,4)

for i=1:3
    for j=1:4
        sum_matrix(i,j)=mat_1(i,j)+mat_2(i,j);
    end
end

sum_matrix