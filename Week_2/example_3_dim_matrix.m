%%%% This file will show you an example of a 3d matrix
clear
clc
close all

load mristack.mat  %%% this is an example data provided by MATLAB

for i=1:21
    imagesc(mristack(:,:,i))
    pause(1)        %%% This wil pause the loop execution by 1 sec
end