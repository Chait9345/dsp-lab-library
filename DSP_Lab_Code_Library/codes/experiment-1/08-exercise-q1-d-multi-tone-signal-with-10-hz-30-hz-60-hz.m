clc; clear; close all;
Fs = 1000; t = 0:1/Fs:0.5;
x = sin(2*pi*10*t) + sin(2*pi*30*t) + sin(2*pi*60*t);
plot(t,x); title('Multi-tone'); xlabel('Time (s)');
