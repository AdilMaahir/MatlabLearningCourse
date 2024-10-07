% Script file: stats_3.m

% Purpose 
% to calculate mean and the standard deviation of an input data set,
% Where each input value can be positive, negative, or zero

% Record of revision
% Written by ADIL MAAHIR on July 18 2024

% Read the inputs from the user

% Perform clearing the space
clear;
close all;
clc;

ii = input('Enter the numberr of set points');
sum_x = 0; % to count summation of mean terms
sum_x2 = 0; % to count summation of variances

if(ii < 2) 
    disp('At least 2 values must be entered');

else
    % We have enough data, so let's get it!!.
    % Iterate to get user input data sets
  
    for n = 1:ii
        % get the values
        x = input('Enter the value:');
        % Accumulate mean and variances
        sum_x = sum_x + x;
        sum_x2 = sum_x2 + x^2;

    end
    % Now calc the mean and std Deviation
xbar = sum_x / ii;
std_dev = sqrt( (ii * sum_x2 - sum_x^2) / (ii * (ii-1)));

% Tell the user 
fprintf('The mean of this data set is: %f\n',xbar);
fprintf('The standard deviation of this data set is %f\n',std_dev);
fprintf('The number of data sets is %d\n',ii);
end