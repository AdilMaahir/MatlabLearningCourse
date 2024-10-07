% Vectorizing Arrays 
% Testing to work with arrays and vectors

for ii = 1:100
    square(ii) = ii^2;
    square_root(ii) = ii^(1/2);
    cube_root(ii) = ii^(1/3);
end 

% Display the arrays 
disp(square );
disp(square_root);

% Try using the vectors instead
ii2 = 1:100;
square2 = ii2.^2;
square_root2 = ii2.^(1/2);
cube_root2 = ii2.^(1/3);

% disp result to user screen
disp(square2);