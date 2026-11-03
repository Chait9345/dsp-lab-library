clc; clear; close all;
b = [1 1 1]/3; a = 1; % y = (x[n]+x[n-1]+x[n-2])/3
[h,w] = freqz(b,a);
subplot(3,1,1); plot(w/pi,abs(h)); title('Moving average (LPF)');
n = 0:99;
s = 0.9*ones(1,100); % 0.9 u[n]
x = s + 0.2*randn(1,100); % corrupted
y = filter(b,a,x);
subplot(3,1,2); plot(n,x); title('Noisy input');
subplot(3,1,3); plot(n,y); title('Smoothed output');
% If your question means 0.9^n u[n], use s = 0.9.^n;
