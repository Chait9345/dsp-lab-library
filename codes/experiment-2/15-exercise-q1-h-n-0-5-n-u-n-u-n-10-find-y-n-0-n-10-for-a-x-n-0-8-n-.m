clc; clear; close all;
u = @(n) double(n>=0);
n = 0:10;
h = 0.5.^n .* (u(n)-u(n-10));
xa = 0.8.^n .* (u(n)-u(n-5));
xb = [1 3 0 4]; % deltas at n = 0,1,3
ya = conv(xa,h); yb = conv(xb,h);
subplot(2,1,1); stem(n,ya(1:11)); title('(a) y[n]');
subplot(2,1,2); stem(n,yb(1:11)); title('(b) y[n]');
