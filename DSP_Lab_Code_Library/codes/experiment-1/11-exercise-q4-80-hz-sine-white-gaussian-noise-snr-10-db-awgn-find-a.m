clc; clear; close all;
Fs = 1000; t = 0:1/Fs:1;
x = sin(2*pi*80*t);
y = awgn(x,10,'measured'); % add noise, SNR = 10 dB
[r,lag] = xcorr(y); % autocorrelation
subplot(2,1,1); plot(t,y); title('Noisy sine');
subplot(2,1,2); plot(lag,r); title('Autocorrelation');
% Peak at lag 0; repeats every Fs/f = 12.5 samples.
% If awgn is missing: y = x + sqrt(mean(x.^2)/10)*randn(size(x));
