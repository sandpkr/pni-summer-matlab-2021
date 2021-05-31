%%% week_1_lecture_1 code
%%% This code will calculate the volume of a cube
clear
clc

character_example='Hello world';
number_example_1=5;
number_example_2=2.718;

%% example of a collection of numbers
array_example_numbers=[1,2,3];


%% example of a collection of strings
array_example_chars{1}='Hello';
array_example_chars{2}='World';
%% example of collection of an 
number_and_string_array{1,1}=2;
number_and_string_array{1,2}='text';

%% making an array
row_vector=[11 12 13 14 15 16];
column_vector=[24;25;26;27];
scalar_example=[2];
matrix_example=[31 32 33; 34 35 36];

big_mat_eg=[1 2 3 4; 5 6 7 8; 9 10 11 12];
%% learning more about the matrices
new_matrix=[1 2 3 4; 5 6 7 8]
length(new_matrix)
new_matrix(5)
size(new_matrix)

%% 3 dim matrix example
three_dim_mat(:,:,1)=[1 2 3; 4 5 6];
three_dim_mat(:,:,2)=[11 12 13; 14 15 16];
three_dim_mat(:,:,3)=[21 22 23; 24 25 26];

%% Defining matrices in matlab
vector_1=[2:7]
only_odd_numbers=[1:2:13]
descending_even_numbers=[14:-2:2]

%% defining matrices in matlab using in-built functions
clc
ones(2,3)
zeros(3,3)
nan(2,4)

%% matrix addition and subtraction
mat_1=[6:2:10; 20:-2:16]
mat_2=[3:5; -5:-3]
mat_add=mat_1+mat_2

mat_subt=mat_1-mat_2

%% matrix scalar multiplication
mat_3=[1:2:5; 5:-2:1]
scalar_3=5;
scalar_mult=mat_3*scalar_3

%% matrix vector multiplication
mat_4=[3:5; 5:7]
mat_5=[2:3; 4:5; 6:7]
vector_mult=mat_4*mat_5

%% element by element multiplication
mat_6=[3:5; 5:7]
mat_7=[2:4; 4:6]
element_by_element_mult=mat_6.*mat_7

%% trasnpose of a matrix
mat_8=[3:5; -7:-5]
mat_9=mat_8'

%% splitting a matrix
original_mat=[1:7; 21:27; 51:57]
split_row=original_mat(2,:)
split_column=original_mat(:,4)

%% horizontal concatenating two matrices
mat_10=ones(3,2)*4
mat_11=randi(7,3,2)
horz_cat_1=[mat_10 mat_11]
horz_cat_2=horzcat(mat_10,mat_11)

%% horizontal concatenating two matrices
mat_12=ones(2,3)*4
mat_13=randi(7,2,3)
vert_cat_1=[mat_12; mat_13]
vert_cat_2=vertcat(mat_12,mat_13)

%% mean of an array
new_matrix=[2:2:16; 10:-2:-5;3:3:24]
mean(new_matrix)
mean(new_matrix,2)

%% sorting an array
mat_14=[10 5 2 3 6 7 0 -1 -12 7 6]
sort(mat_14)

%% to find unique elements in an array
unique(mat_14)

%% to reshape an array
to_reshape_array=[1:1:10]
reshape(to_reshape_array,[5,2])
