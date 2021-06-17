%%%% if and elseif statement
clear
clc

num2=10;  %% try NaN, Inf, -Inf

if num2>0
    disp('positive number')
elseif num2<0
    disp('negative number')
else
    disp('zero')
end