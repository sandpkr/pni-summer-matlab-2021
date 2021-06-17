%%% for loop example
clear
clc

for i=1:10
    disp(['current iteration is: ' num2str(i)])
end

for i=10:-1:1
    disp(['current iteration is: ' num2str(i)])
end

for i=3:2:10
    disp(['current iteration is: ' num2str(i)])
end

for i=[1 5 7 10]
    disp(['current iteration is: ' num2str(i)])
end
