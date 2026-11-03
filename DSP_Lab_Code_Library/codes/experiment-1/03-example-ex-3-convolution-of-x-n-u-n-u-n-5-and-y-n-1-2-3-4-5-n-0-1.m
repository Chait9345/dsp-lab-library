clc; clear; close all;
n = 0:10;
x = (n>=0) - ((n-5)>=0);
y = [1 2 3 4 5];
z = conv(x,y); % length 11+5-1 = 15
stem(0:length(z)-1, z); title('Convolution');
