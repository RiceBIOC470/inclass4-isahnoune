%AW: looks good, see a couple of minor comments below. 0.94/1. 

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

%AW: this is very close to correct. however 'Random numbers 2' doesn't print on its own line. to get this to work, move the statement
%     fprintf(fid, "\n"); to below the loop over k instead of above it. -0.05
%a
filename = 'InClass4Question1.txt';
fid = fopen(filename, 'w');
fprintf(fid, 'Random numbers 1');
x = randi(10,13);
for i = 1:10
    fprintf(fid, "\n");
    for k = 1:13
        fprintf(fid, x(i,k)+"\t");
        
    end    
end


fprintf(fid, 'Random numbers 2 \n');
y = randi(9,7);
for j = 1:9
    fprintf(fid, "\n");
    for k = 1:7
        fprintf(fid, x(i,k)+"\t");
    end
end

%b

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

%AW: this is essentially correct, be careful with the variable types. By default value 
% will store a number as 0 or 1, not a logical variable. use the keywords true or false
% or else explicitly cast these as logical. -0.01.
function value = Practice(matrixcheck)
temp = sum(matrixcheck);
if temp < 10
    value = 0;
else
    value = 1;
end
