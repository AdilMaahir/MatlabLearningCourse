% Script file: timings.m

% Purpose:
% This program calculates the time required to
% Calculate the squares of all integers from 1 to 
% 10, 000 in four different ways:

% 1. Using a for loop with an uninitialized output
% array.
% 2. Using a for loop with a pre-allocated output array and 
% and NO JIT compiler.
%3. Using a for loop witha pre-allocated output 
% array and the JIT compiler.
% 4. Using vectors.

% Record of revisions
% Programmer ===== ADIL MAAHIR
% Date July 19 2024

% Define variables.
% ii, jj  -- Loop index
% Average1  -- Average time for a calcualtiion 1
% Average2 -- Average time for calculation 2
% Average3 -- Average time for calculation 3
% Average4 -- Average time for calculation 4


% Perform caculation with an uninitialized array "square".
% This calculation is done only once
% because it is so slow.

maxCount = 1;       % Number of repetitions
tic;      % Start timer

for jj = 1:maxCount
    clear square    % Clear output array
    square = zeros(1,10000);  % Pre-initialize array
    for ii = 1:10000
        square(ii) = ii^2;  % Calculate square
    end  % end inner for loop
  
end  % end outre for loop

average1 = (toc)/maxCount;  % Calculate avaerage time


% Perform calcuations with a preallocated array 
% Calling an external function to square the number.
% This calculation is averaged over 10 loops.

maxCount = 10;          % Number of repetitions
tic;                    % Start timer

% loops through square array
for jj = 1:maxCount
    clear square      %Clear output array
    square = zeros(1,10000);  % Pre-initialize array
    
    for ii = 1:10000
        square(ii) = sqr(ii);
    end  %end inner for loop
end   % end outer for loop

average2 = (toc)/maxCount;          % Calculate average time

% Perform calculation with a pre-allocated array
% This calculation is averaged over 100 times (loops)

maxCount = 100;         % Number of repetitions
tic;                     %Call the timer

% Loop through the square array
for jj = 1:maxCount
    clear square;       % Clear output array
    square = zeros(1,10000);    % Pre-initialize the array

    % inner loop starts
    for ii = 1:10000
        square(ii) = ii^2;          % Calculate square
    end % end inner loop
end % end outer for loop 

average3 = (toc)/maxCount;   % Calculate average time


% Perform calcuations with vectors
% This calculation is averaged over 1000 times 

maxCount = 1000;        % Number of repetitions(counter)
tic;                    % Start timer

% loop through entire array
for jj = 1:maxCount
    clear square;       % Clear output array
    ii = 1:10000;       % Set up vectors
    square = ii.^2;     % Calculate square
end % end for loop

average4 = (toc)/maxCount;      % Calculate average time

% Display results to the user
fprintf('Loop/ uninitialized array          = %8.4f\n',average1);
fprintf('Loop / initialzied array / no JIT   = %8.4f\n',aveage2);
fprintf('Loop / initialized array / JIT      = %8.4f\n',average3);
fprintf('Vectorized                          = %8.4f\n',average4);