clc; clear; close all;
f = 200;
Fs = 1000; t = 0:1/Fs:1/f; % 1 period
subplot(3,1,1); stem(t,5*sin(2*pi*f*t)); title('Fs=1000, 1 cycle');
Fs = 10000; t = 0:1/Fs:1/f;
subplot(3,1,2); stem(t,5*sin(2*pi*f*t)); title('Fs=10000, 1 cycle');
t = 0:1/Fs:2/f; % 2 periods
subplot(3,1,3); stem(t,5*sin(2*pi*f*t)); title('Fs=10000, 2 cycles');
