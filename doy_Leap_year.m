% Script file: doy.m

% Purpose:
% This program calculates the day of year corresponding to 
% a specified date. It illustrates the use of switch and for
% constructs.

% Record of revision:
% Written by Adil Maahir

% Variable definitions
% day  -- Day (dd)
% day_of_year -- Day of the year
% i -- Loop index
% Leap_day -- Extra day fro leap year
% month  -- Month(mm)
% year   -- Year(yyyy)

% Get day, month, and year to convert
disp('This program calculates the day of year given the ');
disp('specified date.');

month = input('Enter the specified month(1-12)');
day = input('Enter the specified day(1-31)');
year = input('Enter the specifified year(yyyy)');

% Check for leap year and add an extra day if necessary
if(mod(year,400) == 0)
    leap_day = 1; % year divisible by 400 are leap years
elseif mod(year,100) == 0
    leap_day = 0; %Other centuries are not leap year
elseif mod(year, 4) == 0
    leap_day = 1;   %Otherwise every 4th year is a leap year
else 
    leap_day = 0;   %Other years are not leap years
end

% Calculate the day of the year by adding the correct day to 
% the day of the previous year
day_of_year = day;

for i = 1:month - 1
   % Add days in months from JJanuary to last month

   switch (i)
       case {1,3,5,7,8,10,12}
           day_of_year = day_of_year + 31;

       case {4,6,9,11}
           day_of_year = day_of_year + 30;

       case {2}
           day_of_year = day_of_year + 28 + leap_day;

       otherwise
           disp('Not the correct month ');

   end
end

% Tell the user
fprintf('The date %2d/%2d/%4d is day of year %d.\n', ...
    month,day,year,day_of_year);