clc; clear; close all;
wp = 2*pi*200; ws = 2*pi*700; rp = 1; rs = 50;
[N1,w1] = buttord(wp,ws,rp,rs,'s'); [b1,a1] = butter(N1,w1,'s');
[N2,w2] = cheb1ord(wp,ws,rp,rs,'s'); [b2,a2] = cheby1(N2,rp,w2,'s');
[N3,w3] = cheb2ord(wp,ws,rp,rs,'s'); [b3,a3] = cheby2(N3,rs,w3,'s');
[N4,w4] = ellipord(wp,ws,rp,rs,'s'); [b4,a4] = ellip(N4,rp,rs,w4,'s');
w = 2*pi*(1:2000); % common axis, 1..2000 Hz
h1 = freqs(b1,a1,w); h2 = freqs(b2,a2,w);
h3 = freqs(b3,a3,w); h4 = freqs(b4,a4,w);
f = w/(2*pi);
plot(f,20*log10(abs(h1)),f,20*log10(abs(h2)),f,20*log10(abs(h3)),f,20*log10(abs(h4)));
legend('Butter','Cheby1','Cheby2','Ellip'); ylim([-80 5]); grid on;
disp([N1 N2 N3 N4]) % orders: 6 4 4 3
% Comparison: Butterworth needs the highest order (flat). Elliptic needs
% the lowest (ripple in both bands).
