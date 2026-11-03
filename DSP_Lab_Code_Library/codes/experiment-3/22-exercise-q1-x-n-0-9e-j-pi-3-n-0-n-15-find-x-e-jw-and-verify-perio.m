clc; clear; close all;
n = 0:15;
x = (0.9*exp(1j*pi/3)).^n;
w = linspace(-2*pi,2*pi,801); % two periods
X = x*exp(-1j*n'*w); % DTFT formula
subplot(2,1,1); plot(w/pi,abs(X)); title('|X|');
subplot(2,1,2); plot(w/pi,angle(X)); title('Phase'); xlabel('\omega/\pi');
% plot repeats every 2 (i.e. 2*pi) -> periodic
