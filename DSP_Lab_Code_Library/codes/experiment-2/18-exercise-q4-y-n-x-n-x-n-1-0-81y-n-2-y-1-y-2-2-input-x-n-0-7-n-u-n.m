clc; clear; close all;
a = [1 0 -0.81]; b = [1 -1];
yi = [2 2]; % y(-1), y(-2)
xi = 0.7^(-1); % x(-1): u[n+1] is ON at n = -1
ic = filtic(b,a,yi,xi);
n = 0:50;
x = 0.7.^n;
y = filter(b,a,x,ic);
stem(n,y); title('Response');
