clc; clear; close all;
a = [1 -0.95 0.9025]; % y terms moved to the left
b = [1 1 1]/3;
ic = filtic(b,a,[-2 -3],[1 1]);
n = 0:100;
x = cos(n*pi/3);
y = filter(b,a,x,ic);
subplot(2,1,1); plot(n,x); title('Input');
subplot(2,1,2); plot(n,y); title('Output');
