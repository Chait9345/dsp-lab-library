clc; clear; close all;
N = 5;
[z,p,k] = buttap(N); % prototype (wc = 1)
[num,den] = zp2tf(z,p,k);
[h,w] = freqs(num,den);
semilogx(w,20*log10(abs(h))); title('Prototype');
wc = 0.5*pi;
p1 = p*wc; k1 = k*wc^N; % scale poles and gain
[num1,den1] = zp2tf(z,p1,k1)
[h1,w1] = freqs(num1,den1);
figure; semilogx(w1,20*log10(abs(h1))); title('Scaled filter');
