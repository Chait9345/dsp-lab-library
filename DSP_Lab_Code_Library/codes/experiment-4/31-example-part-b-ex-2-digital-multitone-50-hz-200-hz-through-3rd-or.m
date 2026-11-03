clc; clear; close all;
Fs = 1000;
[b,a] = butter(3,100/(Fs/2)); % digital LPF
t = 0:1/Fs:1;
x = sin(2*pi*50*t) + sin(2*pi*200*t);
y = filter(b,a,x);
X = fft(x,512); Y = fft(y,512);
L = 256; f = (0:L-1)/L*(Fs/2);
subplot(2,1,1); plot(f,abs(X(1:L))); title('Input spectrum');
subplot(2,1,2); plot(f,abs(Y(1:L))); title('Output spectrum (200 Hz gone)');
