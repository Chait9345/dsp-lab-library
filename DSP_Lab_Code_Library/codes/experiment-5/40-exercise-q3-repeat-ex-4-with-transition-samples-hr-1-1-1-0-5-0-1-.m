clc; clear; close all;
M = 20;
Hr = [1 1 1 0.5 0.1 zeros(1,11) 0.1 0.5 1 1];
k1 = 0:floor((M-1)/2); k2 = floor((M-1)/2)+1:M-1;
al = (M-1)/2;
ph = [-al*2*pi*k1/M, al*2*pi*(M-k2)/M];
b = real(ifft(Hr.*exp(1j*ph), M));
[h,w] = freqz(b,1);
plot(w/pi,20*log10(abs(h))); grid on;
% Result: stopband attenuation improves a lot. Cost: a wider transition band.
