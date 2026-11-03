clc; clear; close all;
Fs = 2000; M = 40; % bin spacing Fs/M = 50 Hz
Hr = zeros(1,M);
k = [8 9 10]; % 400, 450, 500 Hz
Hr(k+1) = 1; Hr(M-k+1) = 1; % + mirror half
Hr([7 11]+1) = 0.4; Hr(M-[7 11]+1) = 0.4; % transition samples
k1 = 0:floor((M-1)/2); k2 = floor((M-1)/2)+1:M-1;
al = (M-1)/2;
ph = [-al*2*pi*k1/M, al*2*pi*(M-k2)/M];
b = real(ifft(Hr.*exp(1j*ph), M));
[h,f] = freqz(b,1,512,Fs);
plot(f,20*log10(abs(h))); xlabel('Hz'); grid on;
% Key step: bin k = f/(Fs/M). Set the passband bins to 1 AND their
% mirrors at M-k.
