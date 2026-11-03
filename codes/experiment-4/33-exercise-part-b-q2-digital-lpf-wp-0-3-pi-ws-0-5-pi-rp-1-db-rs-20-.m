clc; clear; close all;
wp = 0.3*pi; ws = 0.5*pi; rp = 1; rs = 20;
[N,wc] = cheb1ord(wp,ws,rp,rs,'s'); [bs,as] = cheby1(N,rp,wc,'s');
[b1,a1] = impinvar(bs,as);
[N,wc] = cheb2ord(wp,ws,rp,rs,'s'); [bs,as] = cheby2(N,rs,wc,'s');
[b2,a2] = impinvar(bs,as);
[N,wc] = ellipord(wp,ws,rp,rs,'s'); [bs,as] = ellip(N,rp,rs,wc,'s');
[b3,a3] = impinvar(bs,as);
[h1,w] = freqz(b1,a1); h2 = freqz(b2,a2,w); h3 = freqz(b3,a3,w);
plot(w/pi,20*log10(abs(h1)), w/pi,20*log10(abs(h2)), w/pi,20*log10(abs(h3)));
legend('Cheby-I','Cheby-II','Elliptic'); xlabel('\omega/\pi'); grid on;
% Same template 3 times. Only the ord/design function pair changes.
% If impinvar errors on Cheby-II (numerator order = denominator order,
% N = 4 here), use [b2,a2] = bilinear(bs,as,1); and mention that impulse
% invariance is a poor fit for Cheby-II (its stopband doesn't decay,
% so it aliases).
