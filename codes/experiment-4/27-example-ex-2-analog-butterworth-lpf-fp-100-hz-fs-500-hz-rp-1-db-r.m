clc; clear; close all;
wp = 2*pi*100; ws = 2*pi*500; rp = 1; rs = 40;
[N,wc] = buttord(wp,ws,rp,rs,'s') % N = 4
[b,a] = butter(N,wc,'s');
[h,w] = freqs(b,a);
semilogx(w/(2*pi),20*log10(abs(h))); grid on;
xlabel('Hz'); ylabel('dB');
