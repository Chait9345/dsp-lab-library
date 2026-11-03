clc; clear; close all;
f = 10; Fs = 1000; t = 0:1/Fs:0.5;
x = sawtooth(2*pi*f*t, 0.5); % 0.5 = triangle (1 = ramp)
plot(t,x); title('Triangular wave');
