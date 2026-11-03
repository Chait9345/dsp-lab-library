clc; clear; close all;
z = [0.5; -0.5]; % zeros (column vectors)
p = [0.8; 0.3+0.4j; 0.3-0.4j];
k = 2; % gain
[b,a] = zp2tf(z,p,k);
disp('Numerator b:'); disp(b);
disp('Denominator a:'); disp(a);
zplane(b,a);
% Change z, p, k and rerun. Keep complex poles in conjugate pairs.
