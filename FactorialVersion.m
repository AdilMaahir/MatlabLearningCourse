%Written by Adil Maahir
% This program is written to calculate the factorial of a number

% Variable definition
% n -- A number to solve for its factorial
% n_factorial - the factorial of a number

n = input('Enter the value to compute for its factorial');
n_factorial = 1;
if n == 0
    % display the result to the user.
    fprintf('factorial %d is equal to %d \n',n,1);
else
    % For loop to compute for the factorial
    for i = 1:n
        n_factorial = n_factorial * i;
    end

end

% Display result to the user.
disp(['Factorial ' num2str(n) ' is ' num2str(n_factorial)]);