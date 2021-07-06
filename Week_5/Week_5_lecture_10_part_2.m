clear                                                                      %%%% It will clear all the variables from the workspace
clc                                                                        %%%% It will clear all the texts from command window
close all                                                                  %%%% It will close all the previous figures

addpath('/Volumes/GoogleDrive/My Drive/Grad_School_Year_3/Sandeep_github_matlab_bootcamp/pni-summer-matlab-2021/Week_5');%%%% path where this MATLAB code file is present
cd('/Volumes/GoogleDrive/My Drive/Grad_School_Year_3/Sandeep_github_matlab_bootcamp/pni-summer-matlab-2021/Week_5');     %%%% path where the data file from LABCHART is present

%%%%%%%%%%%%%%%%%%%%%% Loading the data file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('MRO_neural_data_example.mat');                       %%%% Load the data file 
data=MRO_neural_data_example;
%%%%%%%%%%%%%%%%%%%%%%%% Plotting raw data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure; 
plot(data(:,1),data(:,2),'-r')                                     %%%% Plotting Raw data
xlabel('Time (sec)','fontsize',14);                                  %%%% Writing x label. The fontsize of the label is also mentioned.
ylabel('Voltage (uV)','fontsize',14);                               %%%% writing y label
title('Raw data');                                                         %%%% Writing the title of the plot
box off;                                                                    %%%% Box off does not make a square around the figure
set(gca,'fontsize',14)                                                     %%%% This will set the font size of tick labels to be 14

%%%%%%%%%%%%%%%% Determining peaks based on threshold %%%%%%%%%%%%%%%%%%%%
[pks,locs,widths] = findpeaks(data(:,2),'MinPeakHeight',50,'MinPeakDistance',40); %%%% Peak threshold, and minimum inter peak distance
figure; 
plot(data(:,1),data(:,2),'m', 'linewidth',1)  
hold on
plot(data(locs),pks,'ob')%%%% Highlighting peaks above threshold
xlabel('Time (sec)','fontsize',14); 
ylabel('Voltage (uV)','fontsize',14);
title('Peaks above threshold');
box off;
set(gca,'fontsize',14)

%%%%%%%%%%%%%%% Plotting histogram of peak height %%%%%%%%%%%%%%%%%%%%%%%%
figure;
peaks_hist = histogram(pks);                                            %%%% pks has all the amplitude information of the AP peaks
peaks_hist.BinWidth = 10;                                                %%%% Binwidth is the width of each histogram bin
xlabel('Amplitude of AP (uV)','fontsize',14);
ylabel('Number of occurences','fontsize',14)                             
title('Histogram of AP amplitude','fontsize',14);
box off; 
set(gca,'fontsize',14)

%%%%%%%%%%%%%%% Plotting histogram of peak widths %%%%%%%%%%%%%%%%%%%%%%%%%
figure;                                                   
width_hist = histogram(widths);                                         %%%% widths has all the width information of the AP peaks
width_hist.BinWidth = 0.05;                                              
xlabel('Width of AP (ms)','fontsize',14);
ylabel('Number of occurences','fontsize',14)                             
title('Histogram of AP width','fontsize',14);
box off; 
set(gca,'fontsize',18)

%% 
figure
plot(widths,pks,'ob')
xlabel('Width of AP (ms)','fontsize',14);
ylabel('Amplitude of AP (uV)','fontsize',14)                             
title('width vs amplitude of spikes','fontsize',14);
box off; 
set(gca,'fontsize',18)

