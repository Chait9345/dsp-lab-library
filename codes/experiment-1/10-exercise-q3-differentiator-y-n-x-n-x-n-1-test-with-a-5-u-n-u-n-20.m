clc; clear; close all;
u = @(n) double(n>=0);
n = 0:120;
xa = 5*(u(n)-u(n-20));
xb = (u(n)-u(n-10)) + (20-n).*(u(n-10)-u(n-20));
xc = sin(pi*n/25).*(u(n)-u(n-100));
b = [1 -1]; a = 1; % y[n] = x[n] - x[n-1]
ya = filter(b,a,xa); yb = filter(b,a,xb); yc = filter(b,a,xc);
subplot(3,2,1); stem(n,xa); title('xa'); subplot(3,2,2); stem(n,ya); title('ya');
subplot(3,2,3); stem(n,xb); title('xb'); subplot(3,2,4); stem(n,yb); title('yb');
subplot(3,2,5); stem(n,xc); title('xc'); subplot(3,2,6); stem(n,yc); title('yc');
% Comment: (a) spikes at the two edges, (b) +1 / -1 on the slopes,
% (c) cosine-like. Good for slow signals, amplifies noise / fast changes.
