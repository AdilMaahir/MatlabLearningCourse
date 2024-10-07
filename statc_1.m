% Script file: stats_1.m
%  Purpose:
% To calculate mean and the standard deviation of 
% an input data set containing an arbitrary number 
% of input values.
% 
% Record of revisions:
%   Date        Programmer          Description of change
%   =====       ===========         =====================
%  July 8 2024  ADIL MAAHIR          From instructor.

% Variable definition:
% n  -- The number of input samples
% std_dev -- The standard deviation of the input samples
% sum_x  -- The sum of the imput values
% sum_x2 -- The sum of the squares of the input values
% x -- An input data
% x_bar -- The average of the input samples

% initialization 
n = 0; sum_x = 0; sum_x2 = 0;

% Read the first prompt 
x = input('Enter first value ');

% While Loop to read input values 
while(x >= 0) 
    sum_x = sum_x + x;
    sum_x2 = sum_x2 + x^2;
    n = n + 1;

    % Read the next data value
    x = input('Enter next value ');
end

% Calculate for the mean and standard deviation 
x_bar = sum_x / n;
std_dev = sqrt( (n * sum_x2 - sum_x^2) / (n * (n-1)));

% print to the screen
fprintf('The mean of this data set is:  %f\n', x_bar);
fprintf('The standard deviation is:   %f\n',std_dev);
fprintf('The number of data points is %f\n',n);