clc; clear; close all;
n = -10:10;
u = @(n) double(n>=0);
x1 = u(n) - u(n-3);
x2 = sin(n*pi/3).*u(n);
x3 = (0.5.^n).*exp(1j*pi*n/2); % complex
subplot(4,1,1); stem(n,x1); title('u[n]-u[n-3]');
subplot(4,1,2); stem(n,x2); title('sin(n\pi/3)u[n]');
subplot(4,1,3); stem(n,abs(x3)); title('|x3|');
subplot(4,1,4); stem(n,angle(x3)); title('angle x3');
