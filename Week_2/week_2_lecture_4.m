%%% week_2_lecture_4 code
clc
clear

temp_celcius=(5/9)*(temp_fahrenheit-32);

temp_celcius_1=(5/9)*(80-32);
temp_celcius_2=(5/9)*(110-32);
temp_celcius_3=(5/9)*(210-32);

%% without using function
average_temp_without_func=mean([temp_celcius_1,temp_celcius_2,temp_celcius_3]);

%% with using function
average_temp_with_func=mean([fah_to_cel(80),fah_to_cel(110),fah_to_cel(210)]);

