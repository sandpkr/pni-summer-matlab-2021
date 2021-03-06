clear                                                                      %%%% It will clear all the variables from the workspace
clc                                                                        %%%% It will clear all the texts from command window
close all                                                                  %%%% It will close all the previous figures

addpath('/Volumes/GoogleDrive/My Drive/Grad_School_Year_3/Sandeep_github_matlab_bootcamp/pni-summer-matlab-2021/Week_5');%%%% path where this MATLAB code file is present
cd('/Volumes/GoogleDrive/My Drive/Grad_School_Year_3/Sandeep_github_matlab_bootcamp/pni-summer-matlab-2021/Week_5');     %%%% path where the data file from LABCHART is present

%%%%%%%%%%%%%%%%%%%%%% Loading the data file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('nerve_data_example_2.mat');                       %%%% Load the data file 
data=nerve_voltage;                              

% %%%%%%%%%%%%%%%%%%%%%%%% Plotting raw data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure; 
% plot(data(:,1),data(:,2),'-r')                                     %%%% Plotting Raw data
% xlabel('Time (sec)','fontsize',14);                                  %%%% Writing x label. The fontsize of the label is also mentioned.
% ylabel('Voltage (uV)','fontsize',14);                               %%%% writing y label
% title('Raw data');                                                         %%%% Writing the title of the plot
% box off;                                                                    %%%% Box off does not make a square around the figure
% set(gca,'fontsize',14)                                                     %%%% This will set the font size of tick labels to be 14

%%%%%%%%%%%%%%%%% Determining peaks based on threshold %%%%%%%%%%%%%%%%%%%%
[pks,locs,widths] = findpeaks(data(:,2),'MinPeakHeight',10); %%%% Peak threshold, and minimum inter peak distance
figure; 
plot(data(:,1),data(:,2),'m', 'linewidth',1)  
hold on
plot(data(locs),pks,'ob')%%%% Highlighting peaks above threshold
xlabel('Time (sec)','fontsize',14); 
ylabel('Voltage (uV)','fontsize',14);
title('Peaks above threshold');
box off;
set(gca,'fontsize',14)
xlim([20 25])

%%%%%%%%%%%%%%%% Plotting histogram of peak height %%%%%%%%%%%%%%%%%%%%%%%%
figure;
peaks_hist = histogram(pks);                                            %%%% pks has all the amplitude information of the AP peaks
peaks_hist.BinWidth = 10;                                                %%%% Binwidth is the width of each histogram bin
xlabel('Amplitude of AP (uV)','fontsize',14);
ylabel('Number of occurences','fontsize',14)                             
title('Histogram of AP amplitude','fontsize',14);
box off; 
set(gca,'fontsize',14)