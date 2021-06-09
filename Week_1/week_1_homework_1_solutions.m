%%%% This contains the solution for week 1 problem set 1
clear
clc

%% question 1
length=2;
width=5; 
height=7;

volume=length*width*height;
disp(['The volume of the cube is ' num2str(volume) ' and the width of the cube is ' num2str(height)])

%% question 2
clearvars height

%% question 3
disp(['The variables which are not acceptable are: ' '2_variable_name,' 'persistent,' 'otherwise,' 'hello_world,'... 
'welcome_to_the_summer_matlab_bootcamp_course_at_princeton_university'])

disp('Note that Otherwise and While are allowed, but it is not a good practice to use them')

%% question 4
given_matrix=[4:3:27; -30:2:-16; 7:4:38];
disp(['size of the given_matrix is: ' num2str(size(given_matrix))])
given_matrix(2,6)=3;
given_matrix(3,3)=6;
given_matrix(1,7)=8;
given_matrix(2,4:7);
given_matrix(3,:);
given_matrix(:,5);
given_matrix(2:3,5:end);
given_matrix([1 3],[1 3 4 5 7]);

%% question 5
randi([-3 3],3,5);

%% question 6
given_matrix=[4:3:27; -30:2:-16; 7:4:38];
max(given_matrix,[],2);
min(given_matrix,[],2);
max(given_matrix,[],1);
max(given_matrix,[],1);

%% question 7
rand_int_array=randi(7,1,20);
sort(rand_int_array,'ascend');
sort(rand_int_array,'descend');

%% question 8
unique(rand_int_array);






