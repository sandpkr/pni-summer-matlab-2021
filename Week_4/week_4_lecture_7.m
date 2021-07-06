%%%% week 4 lecture 7 script
clear
clc
close all


%% using break in while loop
a = 1;
 
while (a < 10 )
   disp(['value of a is :', num2str(a)]);
   a = a + 1;
      if( a > 5)
         break; % terminate the loop using break statement 
      end 
end

%% using break in for loop

for j=1:10
    disp(['value of iteration is :', num2str(j)])
    if j>7
        break
    end
end

%% using break in for loop

sum_of_random_numbers=0;
for j=1:100
    random_num=randi(5);
    sum_of_random_numbers=sum_of_random_numbers+random_num;
    disp(['for iteration ', num2str(j), ' sum of random numbers is :', num2str(sum_of_random_numbers)])
    if sum_of_random_numbers>100
        break
    end
end

%% using continue in for loop to skip iteration
for n = 1:50
    if rem(n,9)
        continue
    end
    disp(['Divisible by 9: ' num2str(n)])
end

%% using continue in for loop to skip iteration
array=[3 7 -1 NaN 15 NaN -19 NaN];

for i=1:size(array,2)
    if isnan(array(1,i))
        continue
    end
    disp(['The number is: ' num2str(array(i))])
end

%% plotting in matlab
x_data=[1:1:10];
y_data_1=[1 9 2 2 7 9 6 8 2 10];
y_data_2=[-4 -2 -10 -1 -2 -9 -4 -7 -4 -6];

figure;
plot(x_data,y_data_1,'-sr','LineWidth',2)
hold on;
plot(x_data,y_data_2,'-sb','LineWidth',2)
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
legend_names=legend('Data 1','Data 2','Location','best'); %%%% Selecting 'best' as location clooses suitable location for legend box automatically
title('Plotting two data','fontsize',14);
xlim([2 8])
ylim([-15 15])
box on; 
grid on;
set(gca,'fontsize',14)

%%
%%% plotting a histogram
random_numbers=randn(100);
figure;
histogram(random_numbers)
xlabel('X label','fontsize',14); 
ylabel('Y label (\mu \alpha V)','fontsize',14);
title('Plotting histogram','fontsize',14);
% xlim([2 8])
% ylim([-15 15])
box on; 
grid on;
set(gca,'fontsize',14)

%% example of wait for button press
close all
to_plot_data=randi([1,10],10,100);

x_axis=1:1:size(to_plot_data,2);

for i=1:size(to_plot_data,1)
    figure;
    plot(x_axis,to_plot_data(i,:),'-r')
    title(num2str(i))
    pause(1)
%     waitforbuttonpress
    close all
end

