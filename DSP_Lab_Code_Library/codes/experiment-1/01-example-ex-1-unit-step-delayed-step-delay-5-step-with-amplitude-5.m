clc; clear; close all;
n = 0:15;
u = (n>=0); % unit step
u5 = (n-5)>=0; % delayed step
a5 = 5*u; % amplitude-scaled step
xn = u - u5; % rectangular window u[n]-u[n-5]
xr = n.*u; % ramp
subplot(3,2,1); stem(n,u); title('Unit step');
subplot(3,2,2); stem(n,u5); title('Delayed step');
subplot(3,2,3); stem(n,a5); title('Scaled step');
subplot(3,2,4); stem(n,xn); title('Window');
subplot(3,2,5); stem(n,xr); title('Ramp');
