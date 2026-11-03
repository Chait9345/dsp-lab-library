clc; clear; close all;
a = [1 -0.6 -0.16];
b = [5 0 0];
N = 16; n = 0:N-1;
x = [1 zeros(1,N-1)]; % impulse
h = filter(b,a,x);
stem(n,h); title('Impulse response');
