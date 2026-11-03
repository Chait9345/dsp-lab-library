clc; clear; close all;
N = 32; n = 0:N-1; w = 2*pi*n/N;
x = 0.5.^n;
X = fft(x);
subplot(2,1,1); plot(w,abs(X)); title('DTFT magnitude');
subplot(2,1,2); plot(w,angle(X)); title('DTFT phase');
figure;
subplot(2,1,1); stem(n,abs(X)); title('DFT magnitude');
subplot(2,1,2); stem(n,angle(X)); title('DFT phase');
