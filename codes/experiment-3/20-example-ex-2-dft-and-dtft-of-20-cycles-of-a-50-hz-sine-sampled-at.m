clc; clear; close all;
f = 50; Fs = 1000;
t = 0:1/Fs:20/f; % 20 cycles
x = sin(2*pi*f*t);
X = fft(x,256);
subplot(2,1,1); stem(abs(X)); title('DFT magnitude');
subplot(2,1,2); stem(angle(X)); title('DFT phase');
L = length(X)/2; fr = (0:L-1)/L*(Fs/2);
figure;
subplot(2,1,1); plot(fr,abs(X(1:L))); title('DTFT magnitude');
subplot(2,1,2); plot(fr,angle(X(1:L))); xlabel('Hz'); % peak at 50 Hz
