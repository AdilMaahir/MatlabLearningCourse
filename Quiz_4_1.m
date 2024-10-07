%% Quiz 4.1
% define a counter
cnter = 0;

% Count the number of times a loop goes 
for ii = 7:2:10
    cnter = cnter + 1;
end

disp("The value of counter is:");
disp(cnter);

t = -6 * pi: pi/10: 6 * pi;
a = sin(t);
b = a > 0;
