clc; clear; close all;
f = 10; Fs = 1000; t = 0:1/Fs:0.5;
subplot(3,1,1); plot(t,square(2*pi*f*t,25)); title('25%');
subplot(3,1,2); plot(t,square(2*pi*f*t,50)); title('50%');
subplot(3,1,3); plot(t,square(2*pi*f*t,75)); title('75%');
