%%%% combine while loop and if loop
clc
clear

array=[-5 -2 -5 -4 4 2 -2 5 0 -1];

i=1;
while i<11
    test_num=array(1,i);
    if test_num>0
        disp([num2str(test_num) ' is a positive integer'])
    elseif test_num<0
        disp([num2str(test_num) ' is a negative integer'])
    else
        disp([num2str(test_num) ' is zero'])
    end
    i=i+1;
end