clc; clear; close all;
% divide num & den by z^2: H = (1 - z^-2)/(1 - 6z^-1 + 9z^-2)
b = [1 0 -1]; a = [1 -6 9];
disp('y[n] - 6y[n-1] + 9y[n-2] = x[n] - x[n-2]'); % (b)
zplane(b,a); title('Pole-zero'); % (c)
% (a) anti-causal: get causal h of H(1/z), then flip time
[g,m] = impz(fliplr(b),fliplr(a),20);
h = flipud(g)'; nh = -19:0; % h[n] for n<=0
figure; stem(nh,h); title('Impulse response (anti-causal)');
% (d)
n = 0:50; x = 3*sin(n*pi/3);
y = conv(x,h); ny = (n(1)+nh(1)):(n(end)+nh(end));
figure; stem(ny,y); title('Output');
% Anti-causal = ROC |z|<3, so h[n] lives at n<=0. Trick: H(1/z) is causal
% -> impz -> flip. (If your teacher accepts the causal answer: h = impz(b,a,20).)
