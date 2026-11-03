clc; clear; close all;
x = [3 11 7 0 -1 4 2];
d = 2;                              % delay by 2 samples
y = [zeros(1,d) x] + 0.2*randn(1,length(x)+d);
[r,lag] = xcorr(y,x);               % unequal-length cross-correlation
stem(lag,r); grid on;
title('Cross-correlation'); xlabel('Lag'); ylabel('Correlation');
% The dominant peak is near +2 samples because y is delayed by 2.
