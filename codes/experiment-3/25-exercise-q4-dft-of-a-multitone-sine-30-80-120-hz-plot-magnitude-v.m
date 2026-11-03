clc; clear; close all;
Fs = 1000; t = 0:1/Fs:1;
x = sin(2*pi*30*t) + sin(2*pi*80*t) + sin(2*pi*120*t);
X = fft(x,1024);
L = length(X)/2; f = (0:L-1)/L*(Fs/2);
plot(f,abs(X(1:L))); xlabel('Frequency (Hz)'); ylabel('|X|');
% Three peaks at 30, 80, 120 Hz.
