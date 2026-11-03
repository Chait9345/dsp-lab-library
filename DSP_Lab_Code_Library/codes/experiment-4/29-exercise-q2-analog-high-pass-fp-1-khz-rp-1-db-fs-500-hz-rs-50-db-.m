clc; clear; close all;
wp = 2*pi*1000; ws = 2*pi*500; rp = 1; rs = 50;
[N1,w1] = buttord(wp,ws,rp,rs,'s'); [b1,a1] = butter(N1,w1,'high','s');
[N2,w2] = cheb1ord(wp,ws,rp,rs,'s'); [b2,a2] = cheby1(N2,rp,w2,'high','s');
[h1,w] = freqs(b1,a1); h2 = freqs(b2,a2,w);
semilogx(w/(2*pi),20*log10(abs(h1)), w/(2*pi),20*log10(abs(h2)));
legend('Butterworth','Chebyshev-I'); xlabel('Hz'); grid on;
% High-pass: ws < wp, and add 'high'.
