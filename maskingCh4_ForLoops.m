%% Performing masking 
%% define the variables 

% Clear the workspace
clear;
a = [1 2 3; 2 -1 0; 3 4 5];
b = a > 1;
e = a;
f = b;

%% Logical arrays are mostly used in masking operations. For example to perform square root 
% of the selected portion of the array. 
c = a;
d = b;
c(d) = sqrt(c(d)); % This statement an array of square roots of only elements with 1. 


%% The above operation may be obtained by using the for constructs

for ii = 1:size(a,1)
    for jj = 1:size(a,2)
        if(a(ii,jj) > b(ii,jj))
            a(ii,jj) = sqrt(a(ii,jj));
        else 
            a(ii,jj) = a(ii,jj) ^ 2;
        end
    end
end 


%% By using vectorization 

e(~f) = e(~f) .^ 2;

